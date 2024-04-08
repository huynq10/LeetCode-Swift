//
//  Easy_1700_Number_of_Students_Unable_to_Eat_Lunch_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 8/4/24.
//

import XCTest

class Easy_1700_Number_of_Students_Unable_to_Eat_Lunch_Test : XCTestCase {
    let solution = Easy_1700_Number_of_Students_Unable_to_Eat_Lunch()
    
    func test01() {
        let students = [1,1,0,0], sandwiches = [0,1,0,1]
        let result = solution.countStudents(students, sandwiches)
        XCTAssert(result == 0)
    }
    
    func test02() {
        let students = [1,1,1,0,0,1], sandwiches = [1,0,0,0,1,1]
        let result = solution.countStudents(students, sandwiches)
        XCTAssert(result == 3)
    }
    
    func test03() {
        let students = [0,0,1,1,0,0,0,0,1,0,0,1,1,0,1,1], sandwiches = [1,0,0,0,0,0,0,1,0,0,1,0,1,1,1,0]
        let result = solution.countStudents(students, sandwiches)
        XCTAssert(result == 1)
    }
}
