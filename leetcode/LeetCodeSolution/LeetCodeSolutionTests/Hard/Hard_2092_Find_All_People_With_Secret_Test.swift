//
//  Hard_2092_Find_All_People_With_Secret_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 24/02/2024.
//

import XCTest

class Hard_2092_Find_All_People_With_Secret_Test : XCTestCase {
    let solution = Hard_2092_Find_All_People_With_Secret()
    
    func test01() {
        let n = 6, meetings = [[1,2,5],[2,3,8],[1,5,10]], firstPerson = 1
        let result = solution.findAllPeople(n, meetings, firstPerson)
        XCTAssert(result == [0,1,2,3,5])
    }
    
    func test02() {
        let n = 4, meetings = [[3,1,3],[1,2,2],[0,3,3]], firstPerson = 3
        let result = solution.findAllPeople(n, meetings, firstPerson)
        XCTAssert(result == [0,1,3])
    }
    
    func test03() {
        let n = 5, meetings = [[3,4,2],[1,2,1],[2,3,1]], firstPerson = 1
        let result = solution.findAllPeople(n, meetings, firstPerson)
        XCTAssert(result == [0,1,2,3,4])
    }
    
    func test04() {
        let n = 6, meetings = [[0,2,1],[1,3,1],[4,5,1]], firstPerson = 1
        let result = solution.findAllPeople(n, meetings, firstPerson)
        XCTAssert(result == [0,1,2,3])
    }
}
