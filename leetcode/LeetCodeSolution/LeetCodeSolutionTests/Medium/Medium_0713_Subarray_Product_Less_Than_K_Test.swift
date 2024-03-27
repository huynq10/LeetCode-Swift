//
//  Medium_0713_Subarray_Product_Less_Than_K_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 27/03/2024.
//

import XCTest

class Medium_0713_Subarray_Product_Less_Than_K_Test : XCTestCase {
    let solution = Medium_0713_Subarray_Product_Less_Than_K()
    
    func test01() {
        let nums = [10,5,2,6], k = 100
        let res = solution.numSubarrayProductLessThanK(nums, k)
        XCTAssert(res == 8)
    }
}
