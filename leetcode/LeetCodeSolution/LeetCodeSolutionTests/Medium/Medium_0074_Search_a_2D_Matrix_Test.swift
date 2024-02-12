//
//  Medium_0074_Search_a_2D_Matrix_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 12/02/2024.
//

import XCTest

class Medium_0074_Search_a_2D_Matrix_Test : XCTestCase {
    let solution = Medium_0074_Search_a_2D_Matrix()
    
    func test01() {
        let matrix = [
            [1,3,5,7],
            [10,11,16,20],
            [23,30,34,60]
        ]
        let target = 3
        let result = solution.searchMatrix(matrix, target)
        XCTAssert(result == true)
    }
    
    func test02() {
        let matrix = [
            [1,3,5,7],
            [10,11,16,20],
            [23,30,34,60]
        ]
        let target = 13
        let result = solution.searchMatrix(matrix, target)
        XCTAssert(result == false)
    }
    
    func test03() {
        let matrix = [
            [1]
        ]
        let target = 1
        let result = solution.searchMatrix(matrix, target)
        XCTAssert(result == true)
    }
    
    func test04() {
        let matrix = [
            [1,3]
        ]
        let target = 3
        let result = solution.searchMatrix(matrix, target)
        XCTAssert(result == true)
    }
}
