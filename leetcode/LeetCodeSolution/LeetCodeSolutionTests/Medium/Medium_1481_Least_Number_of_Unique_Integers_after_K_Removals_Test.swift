//
//  Medium_1481_Least_Number_of_Unique_Integers_after_K_Removals_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 16/02/2024.
//

import XCTest

class Medium_1481_Least_Number_of_Unique_Integers_after_K_Removals_Test : XCTestCase {
    let solution = Medium_1481_Least_Number_of_Unique_Integers_after_K_Removals()
    
    func test01() {
        let arr = [5,5,4]
        let k = 1
        let result = solution.findLeastNumOfUniqueInts(arr, k)
        XCTAssert(result == 1)
    }
    
    func test02() {
        let arr = [4,3,1,1,3,3,2]
        let k = 3
        let result = solution.findLeastNumOfUniqueInts(arr, k)
        XCTAssert(result == 2)
    }
}
