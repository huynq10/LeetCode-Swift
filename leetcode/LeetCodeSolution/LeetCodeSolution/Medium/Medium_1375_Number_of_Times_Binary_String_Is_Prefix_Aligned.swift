//
//  Medium_1375_Number_of_Times_Binary_String_Is_Prefix-Aligned.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 21/01/2024.
//

import Foundation

class Medium_1375_Number_of_Times_Binary_String_Is_Prefix_Aligned {
    func numTimesAllBlue(_ flips: [Int]) -> Int {
        var didFlip = 0
        var rightMostFlip = 0
        var count = 0
        
        for flip in flips {
            if flip > rightMostFlip {
                rightMostFlip = flip
            }
            didFlip += 1
            
            if didFlip == rightMostFlip {
                count += 1
            }
        }
        return count
    }
}
