//
//  Medium_0033_Search_in_Rotated_Sorted_Array_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 15/02/2024.
//

import XCTest

class Medium_0033_Search_in_Rotated_Sorted_Array_Test : XCTestCase {
    let solution = Medium_0033_Search_in_Rotated_Sorted_Array()
    
    func test01() {
        let nums = [4,5,6,7,0,1,2]
        let target = 6
        let result = solution.search(nums, target)
        XCTAssert(result == 2)
    }
    
    func test02() {
        let nums = [4,5,6,7,0,1,2]
        let target = 3
        let result = solution.search(nums, target)
        XCTAssert(result == -1)
    }
    
    func test03() {
        let nums = [1]
        let target = 0
        let result = solution.search(nums, target)
        XCTAssert(result == -1)
    }
    
    func test04() {
        let nums = [1,3]
        let target = 3
        let result = solution.search(nums, target)
        XCTAssert(result == 1)
    }
    
    func test05() {
        let nums = [1,3,5]
        let target = 1
        let result = solution.search(nums, target)
        XCTAssert(result == 0)
    }
}
