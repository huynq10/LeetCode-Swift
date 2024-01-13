//
//  Medium_1347_Minimum_Number_of_Steps_to_Make_Two_Strings_Anagram_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 13/01/2024.
//

import XCTest

class Medium_1347_Minimum_Number_of_Steps_to_Make_Two_Strings_Anagram_Test : XCTest {
    let solution = Medium_1347_Minimum_Number_of_Steps_to_Make_Two_Strings_Anagram()
    
    func test01() {
        let s = "bab"
        let t = "aba"
        let result = solution.minSteps(s, t)
        XCTAssert(result == 1)
    }
    
    func test02() {
        let s = "leetcode"
        let t = "practice"
        let result = solution.minSteps(s, t)
        XCTAssert(result == 5)
    }
    
    func test03() {
        let s = "anagram"
        let t = "mangaar"
        let result = solution.minSteps(s, t)
        XCTAssert(result == 0)
    }
}
