//
//  Easy_1207_Unique_Number_of_Occurrences_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 17/01/2024.
//

import XCTest

class Easy_1207_Unique_Number_of_Occurrences_Test : XCTestCase {
    let solution = Easy_1207_Unique_Number_of_Occurrences()
    
    func test01() {
        let arr = [1,2,2,1,1,3]
        let result = solution.uniqueOccurrences(arr)
        XCTAssert(result == true)
    }
    
    func test02() {
        let arr = [1, 2]
        let result = solution.uniqueOccurrences(arr)
        XCTAssert(result == false)
    }
    
    func test03() {
        let arr = [-3,0,1,-3,1,1,1,-3,10,0]
        let result = solution.uniqueOccurrences(arr)
        XCTAssert(result == true)
    }
}
