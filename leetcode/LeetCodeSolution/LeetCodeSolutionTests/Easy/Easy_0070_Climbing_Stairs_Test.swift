//
//  Easy_0070_Climbing_Stairs_Test.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 08/01/2024.
//

import XCTest

class Easy_0070_Climbing_Stairs_Test : XCTestCase {
    let solution = Easy_0070_Climbing_Stairs()
    
    func test01() {
        let result = solution.climStairs(2)
        XCTAssert(result == 2)
    }
    
    func test02() {
        let result = solution.climStairs(3)
        XCTAssert(result == 3)
    }
    
    func test03() {
        let result = solution.climStairs(4)
        XCTAssert(result == 5)
    }
    
    func test04() {
        let result = solution.climStairs(5)
        XCTAssert(result == 8)
    }
}
