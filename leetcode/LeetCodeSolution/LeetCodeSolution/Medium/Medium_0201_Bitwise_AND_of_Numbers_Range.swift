//
//  Medium_0201_Bitwise_AND_of_Numbers_Range.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 21/02/2024.
//

import Foundation

class Medium_0201_Bitwise_AND_of_Numbers_Range {
    func rangeBitwiseAnd(_ left: Int, _ right: Int) -> Int {
        var l = left, r = right, i = 0
        while l != r {
            l = l >> 1
            r = r >> 1
            i += 1
        }
        return l << i
    }
}
