//
//  Medium_0128_Longest_Consecutive_Sequence_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 09/02/2024.
//

import XCTest

class Medium_0128_Longest_Consecutive_Sequence_Test : XCTestCase {
    let solution = Medium_0128_Longest_Consecutive_Sequence()
    
    func test01() {
        let nums = [100,4,200,1,3,2]
        let result = solution.longestConsecutive(nums)
        XCTAssert(result == 4)
    }
    
    func test02() {
        let nums = [0,3,7,2,5,8,4,6,0,1]
        let result = solution.longestConsecutive(nums)
        XCTAssert(result == 9)
    }
    
    func test03() {
        let nums = [Int]()
        let result = solution.longestConsecutive(nums)
        XCTAssert(result == 0)
    }
}
