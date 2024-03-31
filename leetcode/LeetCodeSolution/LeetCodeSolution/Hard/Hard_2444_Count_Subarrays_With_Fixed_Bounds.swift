//
//  Hard_2444_Count_Subarrays_With_Fixed_Bounds.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 31/03/2024.
//

import Foundation

class Hard_2444_Count_Subarrays_With_Fixed_Bounds {
    func countSubarrays(_ nums: [Int], _ minK: Int, _ maxK: Int) -> Int {
        var start = 0, end = 0, ans = 0
        var minIndex = -1 , maxIndex = -1
        while end < nums.count {
            if nums[end] < minK || nums[end] > maxK {
                minIndex = -1
                maxIndex = -1
                start = end + 1
            }
            
            if nums[end] == minK {
                minIndex = end
            }
            
            if nums[end] == maxK {
                maxIndex = end
            }
            
            ans += max(0, min(minIndex, maxIndex) - start + 1)
            end += 1
        }
        return ans
    }
}
