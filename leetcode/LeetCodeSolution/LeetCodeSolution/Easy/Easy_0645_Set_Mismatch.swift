//
//  Easy_0645_Set_Mismatch.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 22/01/2024.
//

import Foundation

class Easy_0645_Set_Mismatch {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        var numSum = 0
        var indexSum = 0
        var set:Set<Int> = Set()
        var found = 0
        for (index,num) in nums.enumerated() {
            if set.contains(num) {
                found = num
            }
            set.insert(num)
            numSum += num
            indexSum += (index+1)
        }
        return [found, found + indexSum - numSum]
    }
}
