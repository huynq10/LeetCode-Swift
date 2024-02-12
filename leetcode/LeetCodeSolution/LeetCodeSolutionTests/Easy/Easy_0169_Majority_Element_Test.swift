//
//  Easy_0169_Majority_Element_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 12/02/2024.
//

import XCTest

class Easy_0169_Majority_Element_Test : XCTestCase {
    let solution = Easy_0169_Majority_Element()
    
    func test01() {
        let nums = [3,2,3]
        let result = solution.majorityElement(nums)
        XCTAssert(result == 3)
    }
    
    func test02() {
        let nums = [2,2,1,1,1,2,2]
        let result = solution.majorityElement(nums)
        XCTAssert(result == 2)
    }
}
