//
//  Medium_2870_Minimum_Number_of_Operations_to_Make_Array_Empty_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 22/01/2024.
//

import XCTest

class Medium_2870_Minimum_Number_of_Operations_to_Make_Array_Empty_Test : XCTestCase {
    let solution = Medium_2870_Minimum_Number_of_Operations_to_Make_Array_Empty()
    
    func test01() {
        let nums = [2,3,3,2,2,4,2,3,4]
        let output = solution.minOperations(nums)
        XCTAssertEqual(output, 4)
    }
    
    func test02() {
        let nums = [2,1,2,2,3,3]
        let output = solution.minOperations(nums)
        XCTAssertEqual(output, -1)
    }
}
