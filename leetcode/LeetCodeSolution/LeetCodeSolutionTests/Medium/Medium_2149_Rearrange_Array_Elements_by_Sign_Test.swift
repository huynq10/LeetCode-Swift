//
//  Medium_2149_Rearrange_Array_Elements_by_Sign.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 14/02/2024.
//

import XCTest

class Medium_2149_Rearrange_Array_Elements_by_Sign_Test : XCTestCase {
    let solution = Medium_2149_Rearrange_Array_Elements_by_Sign()
    
    func test01() {
        let nums = [3,1,-2,-5,2,-4]
        let result = solution.rearrangeArray(nums)
        XCTAssert(result == [3,-2,1,-5,2,-4])
    }
    
    func test02() {
        let nums = [-1,1]
        let result = solution.rearrangeArray(nums)
        XCTAssert(result == [1,-1])
    }
}
