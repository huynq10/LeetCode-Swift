//
//  Medium_0198_House_Robber_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 21/01/2024.
//

import XCTest

class Medium_0198_House_Robber_Test : XCTestCase {
    let solution = Medium_0198_House_Robber()
    
    func test01() {
        let nums = [1,2,3,1]
        let result = solution.rob(nums)
        let expected = 4
        XCTAssertEqual(result, expected)
    }
    
    func test02() {
        let nums = [2,7,9,3,1]
        let result = solution.rob(nums)
        let expected = 12
        XCTAssertEqual(result, expected)
    }
}
