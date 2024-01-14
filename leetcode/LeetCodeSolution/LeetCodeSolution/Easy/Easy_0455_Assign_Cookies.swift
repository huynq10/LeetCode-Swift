//
//  Easy_0455_Assign_Cookies.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 14/01/2024.
//

import Foundation

class Easy_0455_Assign_Cookies {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        let ch = g.sorted()
        let co = s.sorted()
        
        var chi = 0
        var coi = 0
        var res = 0
        
        while chi < ch.count, coi < co.count {
            if ch[chi] <= co[coi] {
                chi += 1
                res += 1
            }
            coi += 1
        }
        
        return res
    }
}
