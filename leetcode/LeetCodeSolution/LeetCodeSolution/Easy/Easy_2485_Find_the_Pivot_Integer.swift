//
//  Easy_2485_Find_the_Pivot_Integer.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 13/03/2024.
//

import Foundation

class Easy_2485_Find_the_Pivot_Integer {
    func pivotInteger(_ n: Int) -> Int {
        var prefixSum = Array(repeating: 0, count: n + 1)
        for i in 1 ... n {
            prefixSum[i] = prefixSum[i-1] + i
        }
        var suffixSum = 0
        for i in (1 ... n).reversed() {
            suffixSum += i
            if suffixSum == prefixSum[i] {
                return i
            }
        }
        
        return -1
    }
}
