//
//  Easy_0136_Single_number_Test.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 09/01/2024.
//

import XCTest

class Easy_0136_Single_Number_Test: XCTestCase {
    let solution = Easy_0136_Single_Number()
    
    func test0() {
        var nums = [2, 2, 1]
        let result = solution.singleNumber(nums)
        XCTAssertEqual(result, 1)
    }
    
    func test1() {
        var nums = [4, 1, 2, 1, 2]
        let result = solution.singleNumber(nums)
        XCTAssertEqual(result, 4)
    }

    func test2() {
        var nums = [1]
        let result = solution.singleNumber(nums)
        XCTAssertEqual(result, 1)
    }
    
    func test3() {
        var nums = [3, 4, 2, 1, 2 ,3 , 4]
        let result = solution.singleNumber(nums)
        XCTAssertEqual(result, 1)
    }
}
