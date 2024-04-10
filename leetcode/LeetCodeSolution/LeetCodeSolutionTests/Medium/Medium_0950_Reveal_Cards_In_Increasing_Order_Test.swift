//
//  Medium_0950_Reveal_Cards_In_Increasing_Order_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 10/4/24.
//

import XCTest

class Medium_0950_Reveal_Cards_In_Increasing_Order_Test : XCTestCase {
    let solution = Medium_0950_Reveal_Cards_In_Increasing_Order()
    
    func test01() {
        let deck = [17,13,11,2,3,5,7]
        let res = solution.deckRevealedIncreasing(deck)
        XCTAssert(res == [2,13,3,11,5,17,7])
    }
}
