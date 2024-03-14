//
//  Medium_0930_Binary_Subarrays_With_Sum.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 14/03/2024.
//

import Foundation

class Medium_0930_Binary_Subarrays_With_Sum {
    func numSubarraysWithSum(_ nums: [Int], _ goal: Int) -> Int {
        var start = 0, sum = 0, ans = 0, prefixZero = 0
        for end in 0 ..< nums.count {
            sum += nums[end]
            
            while start < end && (sum > goal || nums[start] == 0) {
                if nums[start] == 0 {
                    prefixZero += 1
                } else {
                    prefixZero = 0
                }
                
                sum -= nums[start]
                start += 1
            }
            
            if sum == goal {
                ans += 1 + prefixZero
            }
        }
        return ans
    }
}
