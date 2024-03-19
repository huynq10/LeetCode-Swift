//
//  Medium_0621_Task_Scheduler_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 19/03/2024.
//

import XCTest

class Medium_0621_Task_Scheduler_Test : XCTestCase {
    let solution = Medium_0621_Task_Scheduler()
    
    func test01() {
        let tasks:Array<Character> = ["A","A","A","B","B","B"]
        let n = 2
        let result = solution.leastInterval(tasks, 2)
        XCTAssert(result == 8)
    }
}
