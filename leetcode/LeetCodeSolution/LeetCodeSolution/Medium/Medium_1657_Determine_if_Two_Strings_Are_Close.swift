//
//  Medium_1657_Determineif Two Strings Are Close.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 14/01/2024.
//

import Foundation

class Medium_1657_Determine_if_Two_Strings_Are_Close {
    func closeStrings(_ word1: String, _ word2: String) -> Bool {
        var characterToOccurence1: [Character: Int] = [:]
        var characterToOccurence2: [Character: Int] = [:]
        
        word1.forEach { characterToOccurence1[$0, default: 0] += 1 }
        word2.forEach { characterToOccurence2[$0, default: 0] += 1 }
    
        let key1 = characterToOccurence1.keys.sorted()
        let key2 = characterToOccurence2.keys.sorted()
        
        let occurence1 = characterToOccurence1.values.sorted()
        let occurence2 = characterToOccurence2.values.sorted()
        
        let isCloseString = key1 == key2 && occurence1 == occurence2
        return isCloseString
    }
}
