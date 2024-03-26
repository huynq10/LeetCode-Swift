//
//  Hard_0041_First_Missing_Positive_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 26/03/2024.
//

import XCTest

class Hard_0041_First_Missing_Positive_Test : XCTestCase {
    let solution = Hard_0041_First_Missing_Positive()
    
    func test01() {
        let nums = [1,2,0]
        let res = solution.firstMissingPositive(nums)
        XCTAssert(res == 3)
    }
    
    func test02() {
        let nums = [3,4,-1,1]
        let res = solution.firstMissingPositive(nums)
        XCTAssert(res == 2)
    }
    
    func test03() {
        let nums = [7,8,9,11,12]
        let res = solution.firstMissingPositive(nums)
        XCTAssert(res == 1)
    }
    
    func test04() {
        let nums = [1]
        let res = solution.firstMissingPositive(nums)
        XCTAssert(res == 2)
    }
    
    func test05() {
        let nums = [-5]
        let res = solution.firstMissingPositive(nums)
        XCTAssert(res == 1)
    }
    
    func test06() {
        let nums = [2,1]
        let res = solution.firstMissingPositive(nums)
        XCTAssert(res == 3)
    }
}
