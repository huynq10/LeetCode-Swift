//
//  Easy_0217_Contains_Duplicate_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 07/02/2024.
//

import XCTest

class Easy_0217_Contains_Duplicate_Test : XCTestCase {
    let solution = Easy_0217_Contains_Duplicate()
    
    func test01() {
        let nums = [1,2,3,1]
        let result = solution.containsDuplicate(nums)
        XCTAssert(result == true)
    }
    
    func test02() {
        let nums = [1,2,3,4]
        let result = solution.containsDuplicate(nums)
        XCTAssert(result == false)
    }
    
    func test03() {
        let nums = [1,1,1,3,3,4,3,2,4,2]
        let result = solution.containsDuplicate(nums)
        XCTAssert(result == true)
    }
}
