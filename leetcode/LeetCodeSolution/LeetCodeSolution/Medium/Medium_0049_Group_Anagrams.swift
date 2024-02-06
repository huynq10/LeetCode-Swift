//
//  Medium_0049_Group_Anagrams.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 06/02/2024.
//

import Foundation

class Medium_0049_Group_Anagrams {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict = [String: [String]]()
        
        for str in strs {
            let sortedStr = String(str.sorted())
            dict[sortedStr, default: []].append(str)
        }
        
        return Array(dict.values)
    }
}
