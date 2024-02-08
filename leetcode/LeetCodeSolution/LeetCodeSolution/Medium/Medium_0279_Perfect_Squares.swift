//
//  Medium_0279_Perfect_Squares.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 08/02/2024.
//

import Foundation

class Medium_0279_Perfect_Squares {
    func numSquares(_ n: Int) -> Int {
        var dp = Array(0...n)
        
        for i in 1...n {
            var j = 1
            
            while j * j <= i {
                dp[i] = min(dp[i], dp[i - j * j] + 1)
                j += 1
            }
        }
        
        return dp[n]
    }
}
