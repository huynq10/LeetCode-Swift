//
//  Easy_0026_Remove_Duplicates_From_Sorted_Array.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 06/01/2024.
//

import Foundation

class Easy_0026_Remove_Duplicates_From_Sorted_Array {
    static func removeDuplicates(_ nums: inout [Int]) -> Int {
        let len = nums.count
        guard len > 1 else { return len }
        var idx = 0
        for n in nums where n != nums[idx] {
            idx += 1
            nums[idx] = n
        }
        return idx + 1
    }
}
