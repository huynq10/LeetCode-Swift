//
//  Medium_0075_Sort_Colors_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 04/02/2024.
//

import XCTest

class Medium_0075_Sort_Colors_Test : XCTestCase {
    let solution = Medium_0075_Sort_Colors()
    
    func test01() {
        var nums = [2,0,2,1,1,0]
        solution.sortColors(&nums)
        let expected = [0,0,1,1,2,2]
        XCTAssert(nums == expected)
    }
    
    func test02() {
        var nums = [2,0,1]
        solution.sortColors(&nums)
        let expected = [0,1,2]
        XCTAssert(nums == expected)
    }
}
