//
//  Easy_0977_Squares_of_a_Sorted_Array.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 02/03/2024.
//

import Foundation

class Easy_0977_Squares_of_a_Sorted_Array {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var res = nums
        var left = 0, right = nums.count - 1, index = nums.count - 1
        while left <= right {
            if abs(nums[left]) < abs(nums[right]) {
                res[index] = nums[right] * nums[right]
                right -= 1
            } else {
                res[index] = nums[left] * nums[left]
                left += 1
            }
            index -= 1
        }
        return res
    }
}
