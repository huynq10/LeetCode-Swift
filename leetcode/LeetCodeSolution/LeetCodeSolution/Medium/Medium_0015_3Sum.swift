//
//  Medium_0015_3Sum.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 12/02/2024.
//

import Foundation

class Medium_0015_3Sum {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var res = Set<[Int]>()
        let sorted = nums.sorted()
        
        for i in 0 ..< sorted.count - 2 {
            let num = sorted[i]
            var left = i+1
            var right = nums.count - 1
            
            while left < right {
                let sum = sorted[left] + sorted[right]
                if sum == -num {
                    res.insert([num, sorted[left], sorted[right]])
                    left += 1
                    right -= 1
                } else if sum < -num {
                    left += 1
                } else {
                    right -= 1
                }
            }
        }
        
        return Array(res)
    }
}
