//
//  Medium_2610_Convert_an_Array_Into_a_2D Array_With_Conditions.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 21/01/2024.
//

import Foundation

class Medium_2610_Convert_an_Array_Into_a_2D_Array_With_Conditions {
    func findMatrix(_ nums: [Int]) -> [[Int]] {
        var map = [Int:Int]()
        var result = [[Int]]()
        var count = -1
        for num in nums {
            let index = map[num] ?? 0
            map[num] = index + 1
            if index > count {
                result.append([num])
                count += 1
            } else {
                result[index].append(num)
            }
        }
        return result
    }
}
