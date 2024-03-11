//
//  Medium_0791_Custom_Sort_String_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 11/03/2024.
//

import XCTest

class Medium_0791_Custom_Sort_String_Test : XCTestCase {
    let solution = Medium_0791_Custom_Sort_String()
    
    func test01() {
        let order = "cba", s = "abcd"
        let res = solution.customSortString(order, s)
        XCTAssert(res == "cbad")
    }
    
    func test02() {
        let order = "bcafg", s = "abcd"
        let res = solution.customSortString(order, s)
        XCTAssert(res == "bcad")
    }
}
