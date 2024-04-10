//
//  Easy_2073_Time_Needed_to_Buy_Tickets_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 9/4/24.
//

import XCTest

class Easy_2073_Time_Needed_to_Buy_Tickets_Test : XCTestCase {
    let solution = Easy_2073_Time_Needed_to_Buy_Tickets()
    
    func test01() {
        let tickets = [2,3,2], k = 2
        let result = solution.timeRequiredToBuy(tickets, k)
        XCTAssert(result == 6)
    }
    
    func test02() {
        let tickets = [84,49,5,24,70,77,87,8], k = 3
        let result = solution.timeRequiredToBuy(tickets, k)
        XCTAssert(result == 154)
    }
}
