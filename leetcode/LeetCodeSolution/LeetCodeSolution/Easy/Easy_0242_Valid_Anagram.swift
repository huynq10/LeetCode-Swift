//
//  Easy_0242_Valid_Anagram.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 07/02/2024.
//

import Foundation

class Easy_0242_Valid_Anagram {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var sMap = [Character:Int]()
        var tMap = [Character:Int]()
        
        s.forEach { sMap[$0, default: 0] += 1 }
        t.forEach { tMap[$0, default: 0] += 1 }
        
        return sMap == tMap
    }
}
