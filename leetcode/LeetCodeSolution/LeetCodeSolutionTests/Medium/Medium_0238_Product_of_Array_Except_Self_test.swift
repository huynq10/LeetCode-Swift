//
//  Medium_0238_Product_of_Array_Except_Self_test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 09/02/2024.
//

import XCTest

class Medium_0238_Product_of_Array_Except_Self_Test : XCTestCase {
    let solution = Medium_0238_Product_of_Array_Except_Self()
    
    func test01() {
        let nums = [1,2,3,4]
        let result = solution.productExceptSelf(nums)
        XCTAssert(result == [24,12,8,6])
    }
    
    func test02() {
        let nums = [-1,1,0,-3,3]
        let result = solution.productExceptSelf(nums)
        XCTAssert(result == [0,0,9,0,0])
    }
}


