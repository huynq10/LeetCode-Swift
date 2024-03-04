//
//  Hard_1074_Number_of_Submatrices_That_Sum_to_Target_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 03/03/2024.
//

import XCTest

class Hard_1074_Number_of_Submatrices_That_Sum_to_Target_Test : XCTestCase {
    let solution = Hard_1074_Number_of_Submatrices_That_Sum_to_Target()
    
    func test01() {
        let matrix = [[0,1,0],[1,1,1],[0,1,0]], target = 0
        let res = solution.numSubmatrixSumTarget(matrix, target)
        XCTAssert(res == 4)
    }
    
    func test02() {
        let matrix = [[1,-1],[-1,1]], target = 0
        let res = solution.numSubmatrixSumTarget(matrix, target)
        XCTAssert(res == 5)
    }
}
