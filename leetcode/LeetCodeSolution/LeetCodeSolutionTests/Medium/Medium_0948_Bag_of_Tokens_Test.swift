//
//  Medium_0948_Bag_of_Tokens_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 04/03/2024.
//

import XCTest

class Medium_0948_Bag_of_Tokens_Test : XCTestCase {
    let solution = Medium_0948_Bag_of_Tokens()
    
    func test01() {
        let tokens = [100], power = 50
        let res = solution.bagOfTokensScore(tokens, power)
        XCTAssert(res == 0)
    }
    
    func test02() {
        let tokens = [200,100], power = 150
        let res = solution.bagOfTokensScore(tokens, power)
        XCTAssert(res == 1)
    }
    
    func test03() {
        let tokens = [100,200,300,400], power = 200
        let res = solution.bagOfTokensScore(tokens, power)
        XCTAssert(res == 2)
    }
}
