//
//  Medium_0931_Sum_of_Subarray_Minimums.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 20/01/2024.
//

import Foundation

class Medium_0907_Sum_of_Subarray_Minimums {
    func sumSubarrayMins(_ arr: [Int]) -> Int {
        var sum = 0
        for i in 0 ..< arr.count {
            var currentMin = arr[i]
            for j in 0 ..< (arr.count - i) {
                currentMin = min(arr[i+j], currentMin)
                sum += currentMin
            }
        }
        return sum % 1_000_000_007
    }
}
