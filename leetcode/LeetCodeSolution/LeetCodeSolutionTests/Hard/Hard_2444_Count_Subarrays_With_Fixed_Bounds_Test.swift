//
//  Hard_2444_Count_Subarrays_With_Fixed_Bounds_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 31/03/2024.
//

import XCTest

class Hard_2444_Count_Subarrays_With_Fixed_Bounds_Test : XCTestCase {
  let solution = Hard_2444_Count_Subarrays_With_Fixed_Bounds()
    
    func test01() {
        let nums = [1,3,5,2,7,5], minK = 1, maxK = 5
        let res = solution.countSubarrays(nums, minK, maxK)
        XCTAssert(res == 2)
    }
    
    func test02() {
        let nums = [1,1,1,1], minK = 1, maxK = 1
        let res = solution.countSubarrays(nums, minK, maxK)
        XCTAssert(res == 10)
    }
}
