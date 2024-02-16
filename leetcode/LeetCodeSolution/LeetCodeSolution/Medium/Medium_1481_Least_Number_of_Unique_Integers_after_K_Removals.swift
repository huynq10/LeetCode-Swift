//
//  Medium_1481_Least_Number_of_Unique_Integers_after_K_Removals.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 16/02/2024.
//

import Foundation

class Medium_1481_Least_Number_of_Unique_Integers_after_K_Removals {
    func findLeastNumOfUniqueInts(_ arr: [Int], _ k: Int) -> Int {
        var numToFreq = [Int:Int]()
        arr.forEach { numToFreq[$0, default: 0] += 1 }
        
        var freqSorted = numToFreq.values.sorted()
        var result = freqSorted.count
        var remain = k
        for freq in freqSorted {
            if freq > k {
               break
            }
            
            result -= 1
            remain -= freq
        }
        
        return result
    }
}
