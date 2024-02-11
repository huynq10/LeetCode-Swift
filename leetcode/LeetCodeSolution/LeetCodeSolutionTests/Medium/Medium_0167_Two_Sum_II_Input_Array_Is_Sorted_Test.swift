//
//  Medium_0167_Two_Sum_II_Input_Array_Is_Sorted_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 11/02/2024.
//

import XCTest

class Medium_0167_Two_Sum_II_Input_Array_Is_Sorted_Test : XCTestCase {
    let solution = Medium_0167_Two_Sum_II_Input_Array_Is_Sorted()
    
    func test01() {
        let numbers = [2,7,11,15]
        let target = 9
        let result = solution.twoSum(numbers, target)
        XCTAssert(result == [1,2])
    }
    
    func test02() {
        let numbers = [2,3,4]
        let target = 6
        let result = solution.twoSum(numbers, target)
        XCTAssert(result == [1,3])
    }
    
    func test03() {
        let numbers = [-1,0]
        let target = -1
        let result = solution.twoSum(numbers, target)
        XCTAssert(result == [1,2])
    }
}
