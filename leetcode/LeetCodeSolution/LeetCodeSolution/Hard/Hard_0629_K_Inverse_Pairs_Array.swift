//
//  Hard_0629_ K_Inverse_Pairs_Array.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 27/01/2024.
//

import Foundation

class Hard_0629_K_Inverse_Pairs_Array {
    func kInversePairs(_ n: Int, _ k: Int) -> Int {
        let mod = Int(1E9+7)
        var dp = Array(repeating: Array(repeating: 0, count: k+1), count: n+1)
        for i in 1...n {
            for j in 0...k {
                if j == 0 {
                    dp[i][j] = 1
                } else {
                    var res = dp[i][j]
                    for x in 0...min(i-1,j) {
                        res += dp[i-1][j-x] % mod
                        res = res % mod
                    }
                    dp[i][j] = res
                }
            }
        }
        return dp[n][k]
    }
}
