//
//  Easy_001_Two_Sum_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 02/01/2024.
//

import XCTest

class Easy_0001_Two_Sum_Test: XCTestCase, SolutionsTestCase {
    func test_01() {
        let nums = [2, 7, 11, 15]
        let target = 9
        let expected = [0, 1]
        asyncHelper(nums: nums, target: target, expected: expected)
    }
    
    func test_02() {
        let nums = [3, 2, 4]
        let target = 6
        let expected = [1, 2]
        asyncHelper(nums: nums, target: target, expected: expected)
    }
    
    func test_03() {
        let nums = [3, 3]
        let target = 6
        let expected = [0 , 1]
        asyncHelper(nums: nums, target: target, expected: expected)
    }
    
    private func asyncHelper(nums: [Int], target: Int, expected: [Int]) {
            weak var expectation: XCTestExpectation? = self.expectation(description:timeOutName())
            serialQueue().async(execute: { () -> Void in
                let result_swift: [Int] = Easy_0001_Two_Sum.twoSum(nums, target)
                assertHelper(
                    expected == result_swift,
                    problemName:self.problemName(),
                    input: nums,
                    resultValue: result_swift,
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
                        input: nums,
                        resultValue:self.timeOutName(),
                        expectedValue: expected
                    )
                }
            }
        }
}
