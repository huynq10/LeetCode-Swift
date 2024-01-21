//
//  Medium_0198_House_Robber.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 21/01/2024.
//

import Foundation

class Medium_0198_House_Robber {
    func rob(_ nums: [Int]) -> Int {
        var rob1 = 0
        var rob2 = 0
        
        for i in nums {
            let temp = max(i + rob1, rob2)
            rob1 = rob2
            rob2 = temp
        }
        return rob2
    }
}
