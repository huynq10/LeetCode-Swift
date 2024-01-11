//
//  Easy_1704_Determine_if_String_Halves_Are_Alike_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 12/01/2024.
//

import XCTest

class Easy_1704_Determine_if_String_Halves_Are_Alike_Test : XCTest {
    let solution = Easy_1704_Determine_if_String_Halves_Are_Alike()
    
    func test01() {
        let input = "book"
        let result = solution.halvesAreAlike(input)
        XCTAssert(result == true)
    }
    
    func test02() {
        let input = "textbook"
        let result = solution.halvesAreAlike(input)
        XCTAssert(result == false)
    }
}
