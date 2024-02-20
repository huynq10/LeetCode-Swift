//
//  Easy_0268_Missing_Number_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 20/02/2024.
//

import XCTest

class Easy_0268_Missing_Number_Test : XCTestCase {
    let solution = Easy_0268_Missing_Number()
    
    func test01() {
        let nums = [3,0,1]
        let res = solution.missingNumber(nums)
        XCTAssert(res == 2)
    }
    
    func test02() {
        let nums = [0,1]
        let res = solution.missingNumber(nums)
        XCTAssert(res == 2)
    }
    
    func test03() {
        let nums = [9,6,4,2,3,5,7,0,1]
        let res = solution.missingNumber(nums)
        XCTAssert(res == 8)
    }
}
