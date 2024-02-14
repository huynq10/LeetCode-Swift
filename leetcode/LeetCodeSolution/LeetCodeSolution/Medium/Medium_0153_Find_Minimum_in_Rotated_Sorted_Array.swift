//
//  Medium_0153_Find_Minimum_in_Rotated_Sorted_Array.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 14/02/2024.
//

import Foundation

class Medium_0153_Find_Minimum_in_Rotated_Sorted_Array {
    func findMin(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1
        
        while left < right {
            let mid = left + (right - left) / 2
            
            if nums[mid] > nums[right] {
                left = mid + 1
            } else {
                right = mid
            }
        }
        
        return nums[left]
    }
}
