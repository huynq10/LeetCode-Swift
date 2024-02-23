//
//  Easy_0997_Find_the_Town_Judge_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 22/02/2024.
//

import XCTest

class Easy_0997_Find_the_Town_Judge_Test : XCTestCase {
    let solution = Easy_0997_Find_the_Town_Judge()
    
    func test01() {
        let n = 2, trust = [[1,2]]
        let result = solution.findJudge(n, trust)
        XCTAssert(result == 2)
    }
    
    func test02() {
        let n = 3, trust = [[1,3],[2,3]]
        let result = solution.findJudge(n, trust)
        XCTAssert(result == 3)
    }
    
    func test03() {
        let n = 3, trust = [[1,3],[2,3],[3,1]]
        let result = solution.findJudge(n, trust)
        XCTAssert(result == -1)
    }
    
    func test04() {
        let n = 1, trust = [[Int]]()
        let result = solution.findJudge(n, trust)
        XCTAssert(result == 1)
    }
    
    func test05() {
        let n = 2, trust = [[Int]]()
        let result = solution.findJudge(n, trust)
        XCTAssert(result == -1)
    }
}
