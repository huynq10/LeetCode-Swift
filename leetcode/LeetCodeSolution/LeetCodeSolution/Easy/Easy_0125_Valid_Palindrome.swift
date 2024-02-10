//
//  Easy_0125_Valid_Palindrome.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 10/02/2024.
//

import Foundation

class Easy_0125_Valid_Palindrome {
    func isPalindrome(_ s: String) -> Bool {
        let str = Array(s.lowercased().filter { $0.isNumber || $0.isLetter })
        var lhs = 0, rhs = str.count - 1
        while lhs < rhs {
            if str[lhs] != str[rhs] {
                return false
            }
            
            lhs += 1
            rhs -= 1
        }
        return true
    }
}
