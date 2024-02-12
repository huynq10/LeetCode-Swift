//
//  Medium_0011_Container_With_Most_Water_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 12/02/2024.
//

import XCTest

class Medium_0011_Container_With_Most_Water_Test : XCTestCase {
    let solution = Medium_0011_Container_With_Most_Water()
    
    func test01() {
        let height = [1,8,6,2,5,4,8,3,7]
        let result = solution.maxArea(height)
        XCTAssert(result == 49)
    }
    
    func test02() {
        let height = [1,1]
        let result = solution.maxArea(height)
        XCTAssert(result == 1)
    }
}
