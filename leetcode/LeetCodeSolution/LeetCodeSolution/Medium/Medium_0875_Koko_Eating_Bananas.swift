//
//  Medium_0875_Koko_Eating_Bananas.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 13/02/2024.
//

import Foundation

class Medium_0875_Koko_Eating_Bananas {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        var (l, r) = (1, piles.max()!)
        
        while l < r {
            var k = (l + r) / 2
            let hours = piles.reduce(0) { partialResult, pile in
                return partialResult + (pile + k - 1) / k
            }
        
            if hours <= h {
                r = k
            } else {
                l = k+1
            }
        }
        
        return l
    }
}
