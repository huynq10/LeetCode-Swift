//
//  Hard_0042_Trapping_Rain_Water_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 12/02/2024.
//

import XCTest

class Hard_0042_Trapping_Rain_Water_Test : XCTestCase {
    let solution = Hard_0042_Trapping_Rain_Water()
    
    func test01() {
        let height = [0,1,0,2,1,0,1,3,2,1,2,1]
        let result = solution.trap(height)
        XCTAssert(result == 6)
    }
    
    func test02() {
        let height = [4,2,0,3,2,5]
        let result = solution.trap(height)
        XCTAssert(result == 9)
    }
}
