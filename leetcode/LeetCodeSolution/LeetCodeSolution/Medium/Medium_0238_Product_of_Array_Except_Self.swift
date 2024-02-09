//
//  Medium_0238_Product_of_Array_Except_Self.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 09/02/2024.
//

import Foundation

class Medium_0238_Product_of_Array_Except_Self {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var prefix = Array(repeating: 1, count: nums.count)
        var suffix = Array(repeating: 1, count: nums.count)
        var result = Array(repeating: 0, count: nums.count)
        
        for i in 1 ..< nums.count {
            prefix[i] = prefix[i - 1] * nums[i - 1]
        }
        
        for i in (0 ..< nums.count - 1).reversed() {
            suffix[i] = suffix[i + 1] * nums[i + 1]
        }
        
        for i in 0 ..< result.count {
            result[i] = prefix[i] * suffix[i]
        }
        
        return result
    }
}
