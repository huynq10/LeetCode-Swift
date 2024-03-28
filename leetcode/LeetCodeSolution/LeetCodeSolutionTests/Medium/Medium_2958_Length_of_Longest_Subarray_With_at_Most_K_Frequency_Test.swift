//
//  Medium_2958_Length_of_Longest_Subarray_With_at_Most_K_Frequency_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 28/03/2024.
//

import XCTest

class Medium_2958_Length_of_Longest_Subarray_With_at_Most_K_Frequency_Test : XCTestCase {
    let solution = Medium_2958_Length_of_Longest_Subarray_With_at_Most_K_Frequency()
    
    func test01() {
        let nums = [1,2,3,1,2,3,1,2], k = 2
        let res = solution.maxSubarrayLength(nums, k)
        XCTAssert(res == 6)
    }
    
    func test02() {
        let nums = [1,2,1,2,1,2,1,2], k = 1
        let res = solution.maxSubarrayLength(nums, k)
        XCTAssert(res == 2)
    }
    
    func test03() {
        let nums = [5,5,5,5,5,5,5], k = 4
        let res = solution.maxSubarrayLength(nums, k)
        XCTAssert(res == 4)
    }
}
