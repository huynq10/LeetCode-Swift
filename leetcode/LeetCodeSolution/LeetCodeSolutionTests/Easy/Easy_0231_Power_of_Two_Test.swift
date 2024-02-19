//
//  Easy_0231_Power_of_Two_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 19/02/2024.
//

import XCTest

class Easy_0231_Power_of_Two_Test {
    let solution  = Easy_0231_Power_of_Two()
    
    func test01() {
        let n = 1
        let res = solution.isPowerOfTwo(n)
        XCTAssert(res == true)
    }
    
    func test02() {
        let n = 16
        let res = solution.isPowerOfTwo(n)
        XCTAssert(res == true)
    }
    
    func test03() {
        let n = 3
        let res = solution.isPowerOfTwo(n)
        XCTAssert(res == false)
    }
}
