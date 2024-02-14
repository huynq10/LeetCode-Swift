//
//  Easy_2108_Find_First_Palindromic_String_in_the_Array.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 13/02/2024.
//

import Foundation

class Easy_2108_Find_First_Palindromic_String_in_the_Array {
    func firstPalindrome(_ words: [String]) -> String {
        for word in words {
            let chars = Array(word)
            let len = chars.count
            var found = true
            for i in 0 ..< len / 2 {
                if chars[i] != chars[len - 1 - i] {
                    found = false
                    break
                }
            }
            
            if found {
                return word
            }
        }
        
        return ""
    }
}
