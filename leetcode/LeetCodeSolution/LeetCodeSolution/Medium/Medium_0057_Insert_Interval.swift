//
//  Medium_0057_Insert_Interval.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 17/03/2024.
//

import Foundation

class Medium_0057_Insert_Interval {
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        var result: [[Int]] = []
        var new = newInterval
        
        for current in intervals {
            if new[0] > current[1] { // New is bigger than current
                result.append(current)
            } else if new[1] < current[0] { // New is smaller than current
                result.append(current)
            } else {
                new = [min(new[0], current[0]), max(new[1], current[1])]
            }
        }
        result.append(new)
        return result.sorted { $0[0] < $1[0] }
    }
}
