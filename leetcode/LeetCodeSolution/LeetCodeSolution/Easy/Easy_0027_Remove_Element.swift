//
//  Easy_0027_Remove_Element.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 07/01/2024.
//

import Foundation

class Easy_0027_Remove_Element {
    static func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        nums = nums.filter { $0 != val }
        return nums.count
    }
}
