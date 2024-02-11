//
//  Hard_1463_Cherry_Pickup_II_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 11/02/2024.
//

import XCTest

class Hard_1463_Cherry_Pickup_II_Test : XCTestCase {
    let solution = Hard_1463_Cherry_Pickup_II()
    
    func test01() {
        let grid = [
            [3,1,1],
            [2,5,1],
            [1,5,5],
            [2,1,1]
        ]
        let result = solution.cherryPickup(grid)
        XCTAssert(result == 24)
    }
    
    func test02() {
        let grid = [
            [1,0,0,0,0,0,1],
            [2,0,0,0,0,3,0],
            [2,0,9,0,0,0,0],
            [0,3,0,5,4,0,0],
            [1,0,2,3,0,0,6]
        ]
        let result = solution.cherryPickup(grid)
        XCTAssert(result == 28)
    }
}
