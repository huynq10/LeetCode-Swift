//
//  Hard_2709_Greatest_Common_Divisor_Traversal.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 25/02/2024.
//

import Foundation

class Hard_2709_Greatest_Common_Divisor_Traversal {
    func canTraverseAllPairs(_ nums: [Int]) -> Bool {
            let n = nums.count
            guard n > 1 else { return true } // No pairs.
            guard !nums.contains(1) else { return false } // 1 has no primes.
            
            let maxValue = nums.max() ?? 1
            let sieve = sieve(maxValue)
            var unionFind = UnionFind(maxValue + 1)
            for num in nums {
                var remainder = num
                while remainder > 1 {
                    let prime = sieve[remainder]
                    unionFind.join(prime, num)
                    remainder /= prime
                }
            }
     
            let root = unionFind.rootForNode(nums[0])
            return nums.allSatisfy { unionFind.rootForNode($0) == root }
        }
        // Sieve of Eratosthenes.
        func sieve(_ n: Int) -> [Int] {
            var sieve = Array(repeating: 0, count: n + 1)
            for i in 2...n where sieve[i] == 0 {
                for j in stride(from: i, through: n, by: i) {
                    sieve[j] = i
                }
            }
            return sieve
        }
    }

    // Standard Union Find implementation.
    struct UnionFind {

        var roots: [Int]
        var ranks: [Int]

        init(_ n: Int) {
            roots = Array(0..<n)
            ranks = Array(repeating: 0, count: n)
        }

        func rootForNode(_ node: Int) -> Int {
            var node = node
            while roots[node] != node {
                node = roots[node]
            }
            return node
        }

        mutating func join(_ a: Int, _ b: Int) {
            var rootA = rootForNode(a)
            var rootB = rootForNode(b)
            if rootA != rootB {
                if ranks[rootA] == ranks[rootB] {
                    roots[rootA] = rootB
                    ranks[rootB] += 1
                } else if ranks[rootA] > ranks[rootB] {
                    roots[rootB] = rootA
                } else {
                    roots[rootA] = rootB
                }
            }
        }
}
