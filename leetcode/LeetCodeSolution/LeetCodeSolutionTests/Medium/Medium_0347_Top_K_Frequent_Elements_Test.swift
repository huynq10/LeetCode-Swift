//
//  Medium_0347_Top_K_Frequent_Elements_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 07/02/2024.
//

import XCTest

class Medium_0347_Top_K_Frequent_Elements_Test : XCTestCase {
    let solution = Medium_0347_Top_K_Frequent_Elements()
    
    func test01() {
        let nums = [1,1,1,2,2,3]
        let k = 2
        let result = solution.topKFrequent(nums, k)
        XCTAssert(result == [1, 2])
    }
    
    func test02() {
        let nums = [1]
        let k = 1
        let result = solution.topKFrequent(nums, k)
        XCTAssert(result == [1])
    }
}
