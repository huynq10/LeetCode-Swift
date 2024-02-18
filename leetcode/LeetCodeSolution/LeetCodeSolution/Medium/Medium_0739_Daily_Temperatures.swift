//
//  Medium_0739_Daily_Temperatures.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 18/02/2024.
//

import Foundation

class Medium_0739_Daily_Temperatures {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var stack = Array<Int>()
        var result = Array(repeating: 0, count: temperatures.count)
        for i in 0 ..< temperatures.count {
            while !stack.isEmpty && temperatures[stack.last!] < temperatures[i] {
                let index = stack.removeLast()
                result[index] = i - index
            }
            stack.append(i)
        }
        return result
    }
}
