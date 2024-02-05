//
//  Easy_0387_First_Unique_Character_in_a_String.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 05/02/2024.
//

import Foundation

class Easy_0387_First_Unique_Character_in_a_String {
    func firstUniqChar(_ s: String) -> Int {
        var charToIndexMap = [Character:Int]()
        for (index, character) in s.enumerated() {
            if let _ = charToIndexMap[character] {
                charToIndexMap[character] = Int.max
            } else {
                charToIndexMap[character] = index
            }
        }
        
        var minIndex = Int.max
        for index in charToIndexMap.values {
            if index < minIndex {
                minIndex = index
            }
        }
        
        if minIndex == Int.max {
            minIndex = -1
        }
        
        return minIndex
    }
}
