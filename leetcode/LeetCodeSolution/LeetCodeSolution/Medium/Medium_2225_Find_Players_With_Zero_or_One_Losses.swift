//
//  Medium_2225_Find_Players_With_Zero_or_One_Losses.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 15/01/2024.
//

import Foundation

class Medium_2225_Find_Players_With_Zero_or_One_Losses {
    func findWinners(_ matches: [[Int]]) -> [[Int]] {
        var notLostSet = Set<Int>()
        var lost1Set = Set<Int>()
        var didLostset = Set<Int>()
        
        for match in matches {
            let winner = match[0]
            let loser = match[1]
            
            if didLostset.contains(loser) == false {
                lost1Set.insert(loser)
            } else {
                lost1Set.remove(loser)
            }
            
            didLostset.insert(loser)
            
            if didLostset.contains(winner) == false {
                notLostSet.insert(winner)
            }
            
            if notLostSet.contains(loser) {
                notLostSet.remove(loser)
            }
        }
        
        return [ notLostSet.sorted(), lost1Set.sorted() ]
    }
}
