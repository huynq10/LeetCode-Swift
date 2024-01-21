//
//  Medium_0198_House_Robber.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 21/01/2024.
//

import Foundation

class Medium_0198_House_Robber {
    func rob(_ nums: [Int]) -> Int {
        if nums.count < 3 {
            return max(nums.first ?? 0, nums.last ?? 0)
        }
        
        var result = Array(repeating: 0, count: nums.count)
        result[0] = nums[0]
        result[1] = nums[1]
        result[2] = result[0] + nums[2]
        
        for i in 3..<nums.count {
            let element = nums[i]
            result[i] = max(result[i-3], result[i-2]) + element
        }
        
        let sum = max(result[nums.count - 1], result[nums.count - 2])
        return sum
    }
}
