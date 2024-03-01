//
//  Easy_2864_Maximum_Odd_Binary_Number_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 01/03/2024.
//

import XCTest

class Easy_2864_Maximum_Odd_Binary_Number_Test : XCTestCase {
    let solution = Easy_2864_Maximum_Odd_Binary_Number()
    
    func test01() {
        let s = "010"
        let res = solution.maximumOddBinaryNumber(s)
        XCTAssert(res == "001")
    }
    
    func test02() {
        let s = "0101"
        let res = solution.maximumOddBinaryNumber(s)
        XCTAssert(res == "1001")
    }
}
