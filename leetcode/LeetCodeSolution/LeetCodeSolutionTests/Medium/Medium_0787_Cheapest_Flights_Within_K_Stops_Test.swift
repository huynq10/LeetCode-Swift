//
//  Medium_0787_Cheapest_Flights_Within_K_Stops_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 23/02/2024.
//

import XCTest

class Medium_0787_Cheapest_Flights_Within_K_Stops_Test : XCTestCase {
    let solution = Medium_0787_Cheapest_Flights_Within_K_Stops()
    
    func test01() {
        let n = 4, flights = [[0,1,100],[1,2,100],[2,0,100],[1,3,600],[2,3,200]], src = 0, dst = 3, k = 1
        let result = solution.findCheapestPrice(n, flights, src, dst, k)
        XCTAssert(result == 700)
    }
    
    func test02() {
        let n = 3, flights = [[0,1,100],[1,2,100],[0,2,500]], src = 0, dst = 2, k = 1
        let result = solution.findCheapestPrice(n, flights, src, dst, k)
        XCTAssert(result == 200)
    }
    
    func test03() {
        let n = 3, flights = [[0,1,100],[1,2,100],[0,2,500]], src = 0, dst = 2, k = 0
        let result = solution.findCheapestPrice(n, flights, src, dst, k)
        XCTAssert(result == 500)
    }
}
