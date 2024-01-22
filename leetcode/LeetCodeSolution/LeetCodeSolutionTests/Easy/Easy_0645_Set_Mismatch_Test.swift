//
//  Easy_0645_Set_Mismatch_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 22/01/2024.
//

import XCTest

class Easy_0645_Set_Mismatch_Test : XCTestCase {
    let solution = Easy_0645_Set_Mismatch()
    
    func test01() {
        let nums = [1,2,2,4]
        let expected = [2,3]
        let result = solution.findErrorNums(nums)
        XCTAssertEqual(result, expected)
    }
    
    func test02() {
        let nums = [1,1]
        let expected = [1,2]
        let result = solution.findErrorNums(nums)
        XCTAssertEqual(result, expected)
    }
    
    func test03() {
        let nums = [1,2,3,3,5]
        let expected = [4,5]
        let result = solution.findErrorNums(nums)
        XCTAssertEqual(result, expected)
    }
}
