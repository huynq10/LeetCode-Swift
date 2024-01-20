//
//  Medium_0931_Sum_of_Subarray_Minimums.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 20/01/2024.
//

import Foundation

class Medium_0931_Sum_of_Subarray_Minimums {
    func sumSubarrayMins(_ arr: [Int]) -> Int {
        var stack: [(Int, Int)] = []
        var result = 0
        
        for i in 0..<arr.count {
            while let (val, _) = stack.last, val > arr[i] {
                stack.removeLast()
            }
            stack.append((arr[i], i))
            var lastIdx = -1
            for (val, idx) in stack {
                result += val * (idx - lastIdx)
                result %= 1_000_000_007
                lastIdx = idx
            }
        }
        
        return result
    }
}
