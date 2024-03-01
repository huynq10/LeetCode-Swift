//
//  Easy_2864_Maximum_Odd_Binary_Number.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 01/03/2024.
//

import Foundation

class Easy_2864_Maximum_Odd_Binary_Number {
    func maximumOddBinaryNumber(_ s: String) -> String {
        let oneCount = s.reduce(0) { $0 + ($1 == "1" ? 1 : 0) }
        let res =
        String(repeating: "1", count: oneCount - 1) +
        String(repeating: "0", count: s.count - oneCount) +
        "1"
        return res
    }
}
