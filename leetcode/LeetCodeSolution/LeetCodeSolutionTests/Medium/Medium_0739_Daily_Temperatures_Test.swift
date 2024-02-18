//
//  Medium_0739_Daily_Temperatures_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 18/02/2024.
//

import XCTest

class Medium_0739_Daily_Temperatures_Test : XCTestCase {
    let solution = Medium_0739_Daily_Temperatures()
    
    func test01() {
        let temperatures = [73,74,75,71,69,72,76,73]
        let result = solution.dailyTemperatures(temperatures)
        XCTAssert(result == [1,1,4,2,1,1,0,0])
    }
    
    func test02() {
        let temperatures = [30,40,50,60]
        let result = solution.dailyTemperatures(temperatures)
        XCTAssert(result == [1,1,1,0])
    }
    
    func test03() {
        let temperatures = [30,60,90]
        let result = solution.dailyTemperatures(temperatures)
        XCTAssert(result == [1,1,0])
    }
}
