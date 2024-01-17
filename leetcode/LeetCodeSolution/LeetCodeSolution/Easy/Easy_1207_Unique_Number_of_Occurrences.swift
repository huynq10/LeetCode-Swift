//
//  Easy_1207_Unique_Number_of_Occurrences.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 17/01/2024.
//

import Foundation

class Easy_1207_Unique_Number_of_Occurrences {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var map = [Int:Int]()
        arr.forEach { map[$0, default: 0] += 1 }
        let originCount = map.count
        let setCount = Set(map.values).count
        return originCount == setCount
    }
}
