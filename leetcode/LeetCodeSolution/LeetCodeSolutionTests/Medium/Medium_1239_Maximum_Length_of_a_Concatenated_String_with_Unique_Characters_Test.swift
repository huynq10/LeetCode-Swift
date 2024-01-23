//
//  Medium_1239_Maximum_Length_of_a_Concatenated_String_with_Unique_Characters_Test.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 23/01/2024.
//

import XCTest

class Medium_1239_Maximum_Length_of_a_Concatenated_String_with_Unique_Characters_Test : XCTestCase {
    let solution = Medium_1239_Maximum_Length_of_a_Concatenated_String_with_Unique_Characters()
    func test01() {
        let arr = ["un","iq","ue"]
        let result = solution.maxLength(arr)
        XCTAssertEqual(result, 4)
    }
    
    func test02() {
        let arr = ["cha","r","act","ers"]
        let result = solution.maxLength(arr)
        XCTAssertEqual(result, 6)
    }
    
    func test03() {
        let arr = ["abcdefghijklmnopqrstuvwxyz"]
        let result = solution.maxLength(arr)
        XCTAssertEqual(result, 26)
    }
}
