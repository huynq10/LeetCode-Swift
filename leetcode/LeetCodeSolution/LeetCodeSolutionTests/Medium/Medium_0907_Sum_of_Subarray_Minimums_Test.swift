//
//  Medium_0931_Sum_of_Subarray_Minimums_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 20/01/2024.
//

import XCTest

class Medium_0907_Sum_of_Subarray_Minimums_Test : XCTestCase {
    let solution = Medium_0907_Sum_of_Subarray_Minimums()
    
    func test01() {
        let arr = [3,1,2,4]
        let result = solution.sumSubarrayMins(arr)
        let expected = 17
        XCTAssertEqual(result, expected)
    }
    
    func test02() {
        let arr = [11,81,94,43,3]
        let result = solution.sumSubarrayMins(arr)
        let expected = 444
        XCTAssertEqual(result, expected)
    }
}
