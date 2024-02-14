//
//  Easy_2108_Find_First_Palindromic_String_in_the_Array_Test.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 13/02/2024.
//

import XCTest

class Easy_2108_Find_First_Palindromic_String_in_the_Array_Test : XCTestCase {
    let solution = Easy_2108_Find_First_Palindromic_String_in_the_Array()
    
    func test01() {
        let words = ["abc","car","ada","racecar","cool"]
        let result = solution.firstPalindrome(words)
        XCTAssert(result == "ada")
    }
    
    func test02() {
        let words = ["notapalindrome","racecar"]
        let result = solution.firstPalindrome(words)
        XCTAssert(result == "racecar")
    }
    
    func test03() {
        let words = ["def","ghi"]
        let result = solution.firstPalindrome(words)
        XCTAssert(result == "")
    }
}
