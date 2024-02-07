//
//  Easy_0242_Valid_Anagram_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 07/02/2024.
//

import XCTest

class Easy_0242_Valid_Anagram_Test : XCTestCase {
    let solution = Easy_0242_Valid_Anagram()
    
    func test01() {
        let s = "anagram"
        let t = "nagaram"
        let result = solution.isAnagram(s, t)
        XCTAssert(result == true)
    }
    
    func test02() {
        let s = "rat"
        let t = "car"
        let result = solution.isAnagram(s, t)
        XCTAssert(result == false)
    }
}
