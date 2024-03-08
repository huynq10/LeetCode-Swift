//
//  Easy_3005_Count_Elements_With_Maximum_Frequency.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 08/03/2024.
//

import Foundation

class Easy_3005_Count_Elements_With_Maximum_Frequency {
    func maxFrequencyElements(_ nums: [Int]) -> Int {
        var freqMap = [Int:Int]()
        var max = Int.min
        nums.forEach {
            freqMap[$0, default: 0] += 1
            if let freq = freqMap[$0], freq > max {
                max = freq
            }
        }
        
        var res = 0
        freqMap.forEach { key, value in
            if key == max {
                res += value
            }
        }
        return res
    }
}
