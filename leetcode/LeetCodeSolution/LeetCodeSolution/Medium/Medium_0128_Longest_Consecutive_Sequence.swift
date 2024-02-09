//
//  Medium_0128_Longest_Consecutive_Sequence.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 09/02/2024.
//

import Foundation

class Medium_0128_Longest_Consecutive_Sequence {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let set = Set(nums)
        var longest = 0
        for num in set {
            if set.contains([num - 1]) {
                continue
            }
            
            var cur = num
            var curSteak = 0
            
            while (set.contains(cur)) {
                cur += 1
                curSteak += 1
                
                if longest < curSteak {
                    longest = curSteak
                }
            }
        }
        
        return longest
    }
}
