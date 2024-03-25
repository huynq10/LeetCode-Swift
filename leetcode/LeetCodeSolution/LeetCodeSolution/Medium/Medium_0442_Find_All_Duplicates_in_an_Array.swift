//
//  Medium_0442_Find_All_Duplicates_in_an_Array.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 25/03/2024.
//

import Foundation

class Medium_0442_Find_All_Duplicates_in_an_Array {
    func findDuplicates(_ nums: [Int]) -> [Int] {
        var nums = nums
        nums.insert(0, at: 0)
        
        var result = [Int]()
        for num in nums {
            if nums[num] < 0 {
                result.append(num)
            } else {
                nums[num] *= -1
            }
        }
        return result
    }
}
 
