//
//  Medium_0368_Largest_Divisible_Subset_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 09/02/2024.
//

import XCTest

class Medium_0368_Largest_Divisible_Subset_Test : XCTestCase {
    let solution = Medium_0368_Largest_Divisible_Subset()
    
    func test01() {
        let nums = [1,2,3]
        let result = solution.largestDivisibleSubset(nums)
        XCTAssert(result == [1,2])
    }
    
    func test02() {
        let nums = [1,2,4,8]
        let result = solution.largestDivisibleSubset(nums)
        XCTAssert(result == [1,2,4,8])
    }
    
    func test03() {
        let nums = [1]
        let result = solution.largestDivisibleSubset(nums)
        XCTAssert(result == [1])
    }
    
    func test04() {
        let nums = [3,4,16,8]
        let result = solution.largestDivisibleSubset(nums)
        XCTAssert(result == [4,8,16])
    }
}
