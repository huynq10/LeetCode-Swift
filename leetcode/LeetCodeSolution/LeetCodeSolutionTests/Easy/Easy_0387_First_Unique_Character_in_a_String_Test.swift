//
//  Easy_0387_First_Unique_Character_in_a_String_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 05/02/2024.
//

import XCTest

class Easy_0387_First_Unique_Character_in_a_String_Test : XCTestCase {
    let solution = Easy_0387_First_Unique_Character_in_a_String()
    
    func test01() {
        let s = "leetcode"
        let result = solution.firstUniqChar(s)
        XCTAssert(result == 0)
    }
    
    func test02() {
        let s = "loveleetcode"
        let result = solution.firstUniqChar(s)
        XCTAssert(result == 2)
    }
    
    func test03() {
        let s = "aabb"
        let result = solution.firstUniqChar(s)
        XCTAssert(result == -1)
    }
    
    func test04() {
        let s = "aadadaad"
        let result = solution.firstUniqChar(s)
        XCTAssert(result == -1)
    }
}
