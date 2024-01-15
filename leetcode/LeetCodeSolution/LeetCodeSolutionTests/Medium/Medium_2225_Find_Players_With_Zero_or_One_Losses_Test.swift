//
//  Medium_2225_Find_Players_With_Zero_or_One_Losses_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 15/01/2024.
//

import XCTest

class Medium_2225_Find_Players_With_Zero_or_One_Losses_Test : XCTestCase {
    let solution = Medium_2225_Find_Players_With_Zero_or_One_Losses()
    
    func test01() {
        let matches = [[1,3],[2,3],[3,6],[5,6],[5,7],[4,5],[4,8],[4,9],[10,4],[10,9]]
        let result = solution.findWinners(matches)
        XCTAssert(result == [[1,2,10],[4,5,7,8]])
    }
    
    func test02() {
        let matches = [[2,3],[1,3],[5,4],[6,4]]
        let result = solution.findWinners(matches)
        XCTAssert(result == [[1,2,5,6],[]])
    }
}
