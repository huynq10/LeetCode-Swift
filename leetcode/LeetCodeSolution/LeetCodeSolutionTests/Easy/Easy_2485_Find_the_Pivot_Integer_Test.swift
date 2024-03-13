//
//  Easy_2485_Find_the_Pivot_Integer_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 13/03/2024.
//

import XCTest

class Easy_2485_Find_the_Pivot_Integer_Test : XCTestCase {
    let solution = Easy_2485_Find_the_Pivot_Integer()
    
    func test01() {
        let n = 8
        let res = solution.pivotInteger(n)
        XCTAssert(res == 6)
    }
    
    func test02() {
        let n = 1
        let res = solution.pivotInteger(n)
        XCTAssert(res == 1)
    }
    
    func test03() {
        let n = 4
        let res = solution.pivotInteger(n)
        XCTAssert(res == -1)
    }
}
