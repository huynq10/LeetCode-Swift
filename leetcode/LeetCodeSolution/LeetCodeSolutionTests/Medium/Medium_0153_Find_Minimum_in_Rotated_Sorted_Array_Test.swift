//
//  Medium_0153_Find_Minimum_in_Rotated_Sorted_Array_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 14/02/2024.
//

import XCTest

class Medium_0153_Find_Minimum_in_Rotated_Sorted_Array_Test : XCTestCase {
    let solution = Medium_0153_Find_Minimum_in_Rotated_Sorted_Array()
    
    func test01() {
        let nums = [3,4,5,1,2]
        let result = solution.findMin(nums)
        XCTAssert(result == 1)
    }
    
    func test02() {
        let nums = [4,5,6,7,8,0,1,2]
        let result = solution.findMin(nums)
        XCTAssert(result == 0)
    }
    
    func test03() {
        let nums = [11,13,15,17]
        let result = solution.findMin(nums)
        XCTAssert(result == 11)
    }
    
    func test04() {
        let nums = [1]
        let result = solution.findMin(nums)
        XCTAssert(result == 1)
    }
}
