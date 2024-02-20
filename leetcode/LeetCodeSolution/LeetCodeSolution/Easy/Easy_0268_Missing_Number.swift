//
//  Easy_0268_Missing_Number.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 20/02/2024.
//

import Foundation

class Easy_0268_Missing_Number {
    func missingNumber(_ nums: [Int]) -> Int {
        var indexSum = 0
        var numSum = 0
        for i in 0 ..< nums.count {
            indexSum += i
            numSum += nums[i]
        }
        indexSum += nums.count
        return indexSum - numSum
    }
}
