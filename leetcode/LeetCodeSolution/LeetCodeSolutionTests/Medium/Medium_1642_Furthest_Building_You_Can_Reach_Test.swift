//
//  Medium_1642_Furthest_Building_You_Can_Reach_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 17/02/2024.
//

import XCTest

class Medium_1642_Furthest_Building_You_Can_Reach_Test : XCTestCase {
    let solution = Medium_1642_Furthest_Building_You_Can_Reach()
    
    func test01() {
        let heights = [4,2,7,6,9,14,12], bricks = 5, ladders = 1
        let result = solution.furthestBuilding(heights, bricks, ladders)
        XCTAssert(result == 4)
    }
    
    func test02() {
        let heights = [4,12,2,7,3,18,20,3,19], bricks = 10, ladders = 2
        let result = solution.furthestBuilding(heights, bricks, ladders)
        XCTAssert(result == 7)
    }
    
    func test03() {
        let heights = [14,3,19,3], bricks = 17, ladders = 0
        let result = solution.furthestBuilding(heights, bricks, ladders)
        XCTAssert(result == 3)
    }
    
    func test04() {
        let heights = [7,5,13], bricks = 0, ladders = 0
        let result = solution.furthestBuilding(heights, bricks, ladders)
        XCTAssert(result == 1)
    }
}

