//
//  Easy_0121_Best_Time_to_Buy_and_Sell_Stock_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 17/02/2024.
//

import XCTest

class Easy_0121_Best_Time_to_Buy_and_Sell_Stock_Test : XCTestCase {
    let solution = Easy_0121_Best_Time_to_Buy_and_Sell_Stock()
    
    func test01() {
        let prices = [7,1,5,3,6,4]
        let res = solution.maxProfit(prices)
        XCTAssert(res == 5)
    }
    
    func test02() {
        let prices = [7,6,4,3,1]
        let res = solution.maxProfit(prices)
        XCTAssert(res == 0)
    }
}
