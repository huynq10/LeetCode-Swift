//
//  Medium_1347_Minimum_Number_of_Steps_to_Make_Two_Strings_Anagram.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 13/01/2024.
//

import Foundation

class Medium_1347_Minimum_Number_of_Steps_to_Make_Two_Strings_Anagram {
    func minSteps(_ s: String, _ t: String) -> Int {
        // Count difference of characters in s an t.
        var freq: [Character: Int] = [:]
        s.forEach { freq[$0, default: 0] += 1 }
        t.forEach { freq[$0, default: 0] -= 1 }
        
        // The sum of positive values is the answer as it represents
        // the number of characters that need to be replaced by something
        // else.
        return freq.values.filter({ $0 > 0}).reduce(0, +)
    }
}
