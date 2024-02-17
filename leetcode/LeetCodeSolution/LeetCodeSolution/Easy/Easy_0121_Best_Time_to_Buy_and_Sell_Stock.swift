//
//  Easy_0121_Best_Time_to_Buy_and_Sell_Stock.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 17/02/2024.
//

import Foundation

class Easy_0121_Best_Time_to_Buy_and_Sell_Stock {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = Int.max
        var maxProfit = 0
        for price in prices {
            maxProfit = max(maxProfit, price - minPrice)
            minPrice = min(minPrice, price)
        }
        return maxProfit
    }
}
