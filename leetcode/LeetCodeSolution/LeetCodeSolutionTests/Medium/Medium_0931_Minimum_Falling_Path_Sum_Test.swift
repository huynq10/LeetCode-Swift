//
//  Medium_0931_Minimum_Falling_Path_Sum_Test.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 19/01/2024.
//

import XCTest

class Medium_0931_Minimum_Falling_Path_Sum_Test : XCTestCase {
    private let solution = Medium_0931_Minimum_Falling_Path_Sum()
        
    func test0() {
        let matrix = [[2,1,3],[6,5,4],[7,8,9]]
        let result = solution.minFallingPathSum(matrix)
        let expected = 13
        XCTAssertEqual(result, expected)
    }
    
    /// The falling path with a minimum sum is shown.
    func test1() {
        let matrix = [[-19,57],[-40,-5]]
        let result = solution.minFallingPathSum(matrix)
        let expected = -59
        XCTAssertEqual(result, expected)
    }
}
