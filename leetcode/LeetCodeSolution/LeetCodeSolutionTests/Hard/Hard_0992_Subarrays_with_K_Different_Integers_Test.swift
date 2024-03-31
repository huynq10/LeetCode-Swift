//
//  Hard_0992_Subarrays_with_K_Different_Integers_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 30/03/2024.
//

import XCTest

class Hard_0992_Subarrays_with_K_Different_Integers_Test : XCTestCase {
    let solution = Hard_0992_Subarrays_with_K_Different_Integers()
    
    func test01() {
        let nums = [1,2,1,2,3], k = 2
        let res = solution.subarraysWithKDistinct(nums, k)
        XCTAssert(res == 7)
    }
}
