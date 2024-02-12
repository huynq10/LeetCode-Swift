//
//  Easy_0169_Majority_Element.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 12/02/2024.
//

import Foundation

class Easy_0169_Majority_Element {
    func majorityElement(_ nums: [Int]) -> Int {
        var candidate = 0
        var count = 0
        for num in nums {
            if count == 0 { candidate = num }
            let shouldCount = (candidate == num) ? 1 : -1
            count += shouldCount
        }
        return candidate
    }
}
