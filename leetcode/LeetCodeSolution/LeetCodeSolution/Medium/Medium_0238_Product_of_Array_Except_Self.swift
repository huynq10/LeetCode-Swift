//
//  Medium_0238_Product_of_Array_Except_Self.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 09/02/2024.
//

import Foundation

class Medium_0238_Product_of_Array_Except_Self {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = Array(repeating: 1, count: nums.count)
        var suffix = 1
        
        for i in 1 ..< nums.count {
            result[i] = result[i - 1] * nums[i - 1]
        }
        
        for i in (0 ..< nums.count - 1).reversed() {
            suffix *= nums[i+1]
            result[i] *= suffix
        }
        
        return result
    }
}
