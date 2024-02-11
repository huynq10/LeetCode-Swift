//
//  Medium_0167_Two_Sum_II_Input_Array_Is_Sorted.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 11/02/2024.
//

import Foundation

class Medium_0167_Two_Sum_II_Input_Array_Is_Sorted {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = numbers.count - 1
        
        while left < right {
            let total = numbers[left] + numbers[right]
            if total == target {
                return [left + 1, right + 1]
            } else if total < target {
                left += 1
            } else {
                right -= 1
            }
        }
        
        return [0,0]
    }
}
