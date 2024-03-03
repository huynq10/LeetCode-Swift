//
//  Easy_0977_Squares_of_a_Sorted_Array_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 02/03/2024.
//

import XCTest

class Easy_0977_Squares_of_a_Sorted_Array_Test : XCTestCase {
    let solution = Easy_0977_Squares_of_a_Sorted_Array()
    
    func test01() {
        let nums = [-4,-1,0,3,10]
        let res = solution.sortedSquares(nums)
        XCTAssert(res == [0,1,9,16,100])
    }
    
    func test02() {
        let nums = [-7,-3,2,3,11]
        let res = solution.sortedSquares(nums)
        XCTAssert(res == [4,9,9,49,121])
    }
}
