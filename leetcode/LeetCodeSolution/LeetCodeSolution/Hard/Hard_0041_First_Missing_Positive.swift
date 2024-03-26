//
//  Hard_First_Missing.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 26/03/2024.
//

import Foundation

class Hard_0041_First_Missing_Positive {
    func firstMissingPositive(_ nums: [Int]) -> Int {
        var nums = nums
        var foundOne = false
        for i in 0 ..< nums.count {
            if nums[i] == 1 {
                foundOne = true
            }
            
            if nums[i] <= 0 {
                nums[i] = 1
            }
        }
        
        if nums.count == 1 {
            return foundOne ? 2 : 1
        }
        
        if foundOne == false {
            return 1
        }
        
        for i in 0 ..< nums.count {
            let index = (nums[i] > 0 ? nums[i] : -nums[i]) - 1
            if index >= nums.count || index < 0 {
                continue
            }
            
            if nums[index] > 0 {
                nums[index] = -nums[index]
            }
        }
        
        for i in 0 ..< nums.count {
            if nums[i] > 0 {
                return i + 1
            }
        }
        
        return nums.count + 1
    }
}
