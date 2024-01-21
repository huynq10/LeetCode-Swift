//
//  Medium_2610_Convert_an_Array_Into_a_2D_Array_With_Conditions_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 21/01/2024.
//

import XCTest

class Medium_2610_Convert_an_Array_Into_a_2D_Array_With_Conditions_Test :XCTestCase {
    let solution = Medium_2610_Convert_an_Array_Into_a_2D_Array_With_Conditions()
    
    func test01() {
        let nums = [1,3,4,1,2,3,1]
        let result = solution.findMatrix(nums)
        let expected = [[1,3,4,2],[1,3],[1]]
        XCTAssertEqual(result, expected)
    }
    
    func test02() {
        let nums = [1,2,3,4]
        let result = solution.findMatrix(nums)
        let expected = [[1,2,3,4]]
        XCTAssertEqual(result, expected)
    }
}
