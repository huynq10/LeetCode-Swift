//
//  Medium_0015_3Sum_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 12/02/2024.
//

import XCTest

class Medium_0015_3Sum_Test : XCTestCase {
    let solution = Medium_0015_3Sum()
    
    func test01() {
        let nums = [-1,0,1,2,-1,-4]
        let result = solution.threeSum(nums)
        XCTAssert(result == [[-1,-1,2],[-1,0,1]])
    }
    
    func test02() {
        let nums = [0,1,1]
        let result = solution.threeSum(nums)
        XCTAssert(result == [])
    }
    
    func test03() {
        let nums = [0,0,0]
        let result = solution.threeSum(nums)
        XCTAssert(result == [[0,0,0]])
    }
    
    func test04() {
        let nums = [-2,0,1,1,2]
        let result = solution.threeSum(nums)
        XCTAssert(result == [[-2,0,2],[-2,1,1]])
    }
}
