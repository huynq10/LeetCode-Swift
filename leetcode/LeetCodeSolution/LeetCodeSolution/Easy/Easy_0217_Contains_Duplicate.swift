//
//  Easy_0217_Contains_Duplicate.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 07/02/2024.
//

import Foundation

class Easy_0217_Contains_Duplicate {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        let set = Set(nums)
        return set.count != nums.count
    }
}
