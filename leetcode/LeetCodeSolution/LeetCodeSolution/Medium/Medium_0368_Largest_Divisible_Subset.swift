//
//  Medium_0368_Largest_Divisible_Subset.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 09/02/2024.
//

import Foundation

class Medium_0368_Largest_Divisible_Subset {
    func largestDivisibleSubset(_ nums: [Int]) -> [Int] {
        let sorted = nums.sorted()
        var dp:[[Int]] = Array(repeating: [Int](), count: nums.count)
        
        dp = sorted.map { [$0] }
        var largestSubset = dp[0]
        for i in 1 ..< sorted.count {
            for j in 0 ..< i {
                let cur = sorted[i]
                let subset = dp[j]
                if dp[i].count > subset.count {
                    continue
                }
                
                guard let min = subset.first,
                      let max = subset.last else {
                    dp[i] = [cur]
                    continue
                }
                
                if cur % min == 0, cur % max == 0 {
                    dp[i] = subset
                    dp[i].append(cur)
                    
                    if dp[i].count > largestSubset.count {
                        largestSubset = dp[i]
                    }
                }
            }
        }
        return largestSubset
    }
}
