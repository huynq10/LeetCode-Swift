//
//  Easy_0009_Palindrome_Number_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 03/01/2024.
//

import XCTest

class Easy_0009_Palindrome_Number_Test: XCTestCase, SolutionsTestCase {
    func test_01() {
        let input:Int32 = 121
        let expected = true
        asyncHelper(input: input, expected: expected)
    }
    
    func test_02() {
        let input:Int32 = -121
        let expected = false
        asyncHelper(input: input, expected: expected)
    }
    
    func test_03() {
        let input:Int32 = 10
        let expected = false
        asyncHelper(input: input, expected: expected)
    }
    
    func test_04() {
        let input:Int32 = 11
        let expected = true
        asyncHelper(input: input, expected: expected)
    }
    
    func test_05() {
        let input:Int32 = 123321
        let expected = true
        asyncHelper(input: input, expected: expected)
    }
    
    func test_06() {
        let input:Int32 = -123321
        let expected = false
        asyncHelper(input: input, expected: expected)
    }
    
    func test_07() {
        let input:Int32 = 199999919
        let expected = false
        asyncHelper(input: input, expected: expected)
    }
    
    func test_08() {
        let input:Int32 = 199999991
        let expected = true
        asyncHelper(input: input, expected: expected)
    }
    
    func test_09() {
        let input:Int32 = Int32.min
        let expected = false
        asyncHelper(input: input, expected: expected)
    }
    
    func test_10() {
        let input:Int32 = Int32.max
        let expected = false
        asyncHelper(input: input, expected: expected)
    }
    
    func test_11() {
        let input:Int32 = 0
        let expected = true
        asyncHelper(input: input, expected: expected)
    }
    
    func test_12() {
        let input:Int32 = 100
        let expected = false
        asyncHelper(input: input, expected: expected)
    }
    
    func test_13() {
        let input:Int32 = 123
        let expected = false
        asyncHelper(input: input, expected: expected)
    }
    
    func asyncHelper(input: Int32, expected: Bool) {
        weak var expectation: XCTestExpectation? = self.expectation(description:timeOutName())
        serialQueue().async(execute: { () -> Void in
            let result: Bool = Easy_0009_Palindrome_Number.isPalindrome(input)
            assertHelper(
                result == expected,
                problemName:self.problemName(),
                input: input,
                resultValue: result,
                expectedValue: expected
            )
            
            if let unwrapped = expectation {
                unwrapped.fulfill()
            }
        })
        waitForExpectations(timeout:timeOut()) { (error: Error?) -> Void in
            if error != nil {
                assertHelper(
                    false,
                    problemName:self.problemName(),
                    input: input,
                    resultValue:self.timeOutName(),
                    expectedValue: expected
                )
            }
        }
    }
}
