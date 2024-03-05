//
//  Medium_1750_Minimum_Length_of_String_After_Deleting_Similar_Ends_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 05/03/2024.
//

import XCTest

class Medium_1750_Minimum_Length_of_String_After_Deleting_Similar_Ends_Test : XCTestCase {
    let solution = Medium_1750_Minimum_Length_of_String_After_Deleting_Similar_Ends()
    
    func tes01() {
        let s = "sa"
        let res = solution.minimumLength(s)
        XCTAssert(res == 2)
    }
    
    func test02() {
        let s = "cabaabac"
        let res = solution.minimumLength(s)
        XCTAssert(res == 0)
    }
    
    func test03() {
        let s = "aabccabba"
        let res = solution.minimumLength(s)
        XCTAssert(res == 3)
    }
}
