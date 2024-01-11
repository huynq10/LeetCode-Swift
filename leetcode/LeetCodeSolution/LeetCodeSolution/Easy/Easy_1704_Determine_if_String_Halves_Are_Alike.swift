//
//  Easy_1704_Determine_if_String_Halves_Are_Alike.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 12/01/2024.
//

import Foundation

class Easy_1704_Determine_if_String_Halves_Are_Alike {
    func halvesAreAlike(_ s: String) -> Bool {
        let s = Array(s.lowercased())
        let half = s.count / 2
        let vowels: [Character] = ["a", "i", "u", "e", "o"]
        var first = 0, second = 0
        
        for i in 0..<half {
            first += vowels.contains(s[i]) ? 1 : 0
            second += vowels.contains(s[i + half]) ? 1 : 0
        }
        
        return first == second
    }
}
