//
//  Medium_2966_Divide_Array_Into_Arrays_With_Max_Difference_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 17/02/2024.
//

import XCTest

class Medium_2966_Divide_Array_Into_Arrays_With_Max_Difference_Test : XCTestCase {
    let solution = Medium_2966_Divide_Array_Into_Arrays_With_Max_Difference()
    
    func test01() {
        let nums = [1,3,4,8,7,9,3,5,1], k = 2
        let result = solution.divideArray(nums, k)
        XCTAssert(result == [[1,1,3],[3,4,5],[7,8,9]])
    }
    
    func test02() {
        let nums = [1,3,3,2,7,3], k = 3
        let result = solution.divideArray(nums, k)
        XCTAssert(result == [])
    }
}
