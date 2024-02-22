//
//  Easy_0997_Find_the_Town_Judge.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 22/02/2024.
//

import Foundation

class Easy_0997_Find_the_Town_Judge {
    func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
        var trustMap = [Int:Int]()
        var trustCount = Array(repeating: 0, count: n + 1)
        var maxTrustCount = 0, maxTrustLabel = 0
        trust.forEach {
            let a = $0[0], b = $0[1]
            trustMap[a] = b
            trustCount[b] += 1
            
            if trustCount[b] > maxTrustCount {
                maxTrustCount = trustCount[b]
                maxTrustLabel = b
            }
        }
        
        if maxTrustCount == n - 1, trustMap[maxTrustLabel] == nil {
            if trustMap.isEmpty {
                return n
            } else {
                return maxTrustLabel
            }
        }
        
        return -1
    }
}
