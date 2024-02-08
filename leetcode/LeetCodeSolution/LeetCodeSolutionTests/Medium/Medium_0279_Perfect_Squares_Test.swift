//
//  Medium_0279_Perfect_Squares_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 08/02/2024.
//

import XCTest

class Medium_0279_Perfect_Squares_Test : XCTestCase {
    let solution = Medium_0279_Perfect_Squares()
    
    func test01() {
        let n = 12
        let result = solution.numSquares(n)
        XCTAssert(result == 3)
    }
    
    func test02() {
        let n = 13
        let result = solution.numSquares(n)
        XCTAssert(result == 2)
    }
}
