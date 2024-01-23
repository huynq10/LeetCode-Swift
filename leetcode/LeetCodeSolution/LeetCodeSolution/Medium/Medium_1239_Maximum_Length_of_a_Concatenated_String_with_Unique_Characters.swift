//
//  Medium_1239_Maximum_Length_of_a_Concatenated_String_with_Unique_Characters.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 23/01/2024.
//

import Foundation

class Medium_1239_Maximum_Length_of_a_Concatenated_String_with_Unique_Characters {
    func maxLength(_ arr: [String]) -> Int {
        let sets: [Set<Character>] = arr.compactMap {
            let characterSet = Set($0)
            return $0.count == characterSet.count ? characterSet : nil
        }
        
        func backtrack(_ start: Int, _ seen: Set<Character>) -> Int {
            var result = 0
            for i in start..<sets.count where seen.intersection(sets[i]).isEmpty {
                result = max(result, sets[i].count + backtrack(i + 1, seen.union(sets[i])))
            }
            return result
        }
        
        return backtrack(0, [])
    }
}
