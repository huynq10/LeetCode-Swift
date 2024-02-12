//
//  Easy_0704_Binary_Search_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 12/02/2024.
//

import XCTest

class Easy_0704_Binary_Search_Test : XCTestCase {
    let solution = Easy_0704_Binary_Search()
    
    func test01() {
        let nums = [-1,0,3,5,9,12]
        let target = 9
        let result = solution.search(nums, target)
        XCTAssert(result == 4)
    }
    
    func test02() {
        let nums = [-1,0,3,5,9,12]
        let target = 2
        let result = solution.search(nums, target)
        XCTAssert(result == -1)
    }
}
