//
//  Medium_0948_Bag_of_Tokens.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 04/03/2024.
//

import Foundation

class Medium_0948_Bag_of_Tokens {
    func bagOfTokensScore(_ tokens: [Int], _ power: Int) -> Int {
        let sortedTokens = tokens.sorted()
        var currentPower = power, score = 0
        var left = 0, right = tokens.count - 1
        while left <= right {
            if currentPower >= sortedTokens[left] {
                currentPower -= sortedTokens[left]
                score += 1
                left += 1
            } else if left != right, score > 0 {
                currentPower += sortedTokens[right]
                score -= 1
                right -= 1
            } else {
                right -= 1
            }
        }
        return score
    }
}
