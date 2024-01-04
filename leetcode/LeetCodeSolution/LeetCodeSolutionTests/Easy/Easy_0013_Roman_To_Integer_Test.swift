//
//  Easy_0013_Roman_To_Integer_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 04/01/2024.
//

import XCTest

class Easy_0013_Roman_To_Integer_Test: XCTestCase, SolutionsTestCase {
    func test01() {
        let input = "III"
        let expected = 3
        asyncHelper(input: input, expected: expected)
    }
    
    func test02() {
        let input = "LVIII"
        let expected = 58
        asyncHelper(input: input, expected: expected)
    }
    
    func test03() {
        let input = "MCMXCIV"
        let expected = 1994
        asyncHelper(input: input, expected: expected)
    }
    
    func asyncHelper(input: String, expected: Int) {
        weak var expectation: XCTestExpectation? = self.expectation(description:timeOutName())
        serialQueue().async(execute: { () -> Void in
            let result: Int = Easy_0013_Roman_To_Integer.romanToInt(input)
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
