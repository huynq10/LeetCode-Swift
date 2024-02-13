//
//  Medium_0875_Koko_Eating_Bananas_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 13/02/2024.
//

import XCTest

class Medium_0875_Koko_Eating_Bananas_Test : XCTestCase {
    let solution = Medium_0875_Koko_Eating_Bananas()
    
    func test01() {
        let piles = [3,6,7,11]
        let h = 8
        let result = solution.minEatingSpeed(piles, h)
        XCTAssert(result == 4)
    }
    
    func test02() {
        let piles = [30,11,23,4,20]
        let h = 5
        let result = solution.minEatingSpeed(piles, h)
        XCTAssert(result == 30)
    }
    
    func test03() {
        let piles = [30,11,23,4,20]
        let h = 6
        let result = solution.minEatingSpeed(piles, h)
        XCTAssert(result == 23)
    }
}
