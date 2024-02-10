//
//  Medium_0647_Palindromic_Substrings.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 10/02/2024.
//

import Foundation

class Medium_0647_Palindromic_Substrings {
    func countSubstrings(_ s: String) -> Int {
        var count = 0
        let arr = Array(s)
        
        func palindromeCount(_ left: Int, _ right: Int) {
            var l = left, r = right
            while l >= 0 && r < arr.count && arr[l] == arr[r] {
                count += 1
                l -= 1
                r += 1
            }
        }
        
        for i in 0 ..< s.count {
            palindromeCount(i, i)
            palindromeCount(i, i+1)
        }
        
        return count
    }
}
