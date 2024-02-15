//
//  Medium_0033_Search_in_Rotated_Sorted_Array.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 14/02/2024.
//

import Foundation

class Medium_0033_Search_in_Rotated_Sorted_Array {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        
        // [4,5,6,7,0,1,2]
        // [0,1,2,3,4,5,6]
        while left < right {
            let mid = left + (right - left) / 2
            
            // 5 6 7
            // 6 7 0
            // 7 0 1
            
            if nums[mid] == target {
                return mid
            } else if nums[mid] > nums[left] {
                if nums[mid] > target && target >= nums[left] {
                    right = mid - 1
                } else {
                    left = mid + 1
                }
            } else if nums[mid] < nums[right] {
                if nums[mid] < target && target <= nums[right] {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            } else {
                left = mid + 1
            }
        }
        
        return nums[left] == target ? left : -1
    }
}
