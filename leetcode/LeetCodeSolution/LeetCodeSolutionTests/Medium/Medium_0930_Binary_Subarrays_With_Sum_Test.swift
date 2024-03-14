//
//  Medium_0930_Binary_Subarrays_With_Sum_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 14/03/2024.
//

import XCTest

class Medium_0930_Binary_Subarrays_With_Sum_Test : XCTestCase {
    let solution = Medium_0930_Binary_Subarrays_With_Sum()
    
    func test01() {
        let nums = [1,0,1,0,1], goal = 2
        let res = solution.numSubarraysWithSum(nums, goal)
        XCTAssert(res == 4)
    }
    
    func test02() {
        let nums = [0,0,0,0,0], goal = 0
        let res = solution.numSubarraysWithSum(nums, goal)
        XCTAssert(res == 15)
    }
}
