//
//  Medium_1375_Number_of_Times_Binary_String_Is_Prefix_Aligned_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 21/01/2024.
//

import XCTest

class Medium_1375_Number_of_Times_Binary_String_Is_Prefix_Aligned_Test : XCTestCase {
    let solution = Medium_1375_Number_of_Times_Binary_String_Is_Prefix_Aligned()
    
    func test01() {
        let flips = [3,2,4,1,5]
        let result = solution.numTimesAllBlue(flips)
        let expected = 2
        XCTAssertEqual(result, expected)
    }
    
    func test02() {
        let flips = [4,1,2,3]
        let result = solution.numTimesAllBlue(flips)
        let expected = 1
        XCTAssertEqual(result, expected)
    }
}
