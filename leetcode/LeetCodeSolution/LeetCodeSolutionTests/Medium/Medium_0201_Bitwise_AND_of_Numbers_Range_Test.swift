//
//  Medium_0201_Bitwise_AND_of_Numbers_Range_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 21/02/2024.
//

import XCTest

class Medium_0201_Bitwise_AND_of_Numbers_Range_Test : XCTestCase {
    let solution = Medium_0201_Bitwise_AND_of_Numbers_Range()
    
    func test01() {
        let left = 5, right = 7
        let res = solution.rangeBitwiseAnd(left, right)
        XCTAssert(res == 4)
    }
    
    func test02() {
        let left = 0, right = 0
        let res = solution.rangeBitwiseAnd(left, right)
        XCTAssert(res == 0)
    }
    
    func test03() {
        let left = 1, right = 2147483647
        let res = solution.rangeBitwiseAnd(left, right)
        XCTAssert(res == 0)
    }
}
