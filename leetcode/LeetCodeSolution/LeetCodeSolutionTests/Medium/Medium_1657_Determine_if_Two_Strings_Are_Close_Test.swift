//
//  Medium_1657_Determine_if_Two_Strings_Are_Close_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 14/01/2024.
//

import XCTest

class Medium_1657_Determine_if_Two_Strings_Are_Close_Test : XCTest {
    var solution = Medium_1657_Determine_if_Two_Strings_Are_Close()
    
    func test01() {
        let word1 = "abc"
        let word2 = "bca"
        let result = solution.closeStrings(word1, word2)
        XCTAssert(result == true)
    }
    
    func test02() {
        let word1 = "a"
        let word2 = "aa"
        let result = solution.closeStrings(word1, word2)
        XCTAssert(result == false)
    }
    
    func test03() {
        let word1 = "cabbba"
        let word2 = "abbccc"
        let result = solution.closeStrings(word1, word2)
        XCTAssert(result == true)
    }
}
