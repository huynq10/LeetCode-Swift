//
//  Medium_2971_Find_Polygon_With_the_Largest_Perimeter_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 15/02/2024.
//

import XCTest

class Medium_2971_Find_Polygon_With_the_Largest_Perimeter_Test : XCTestCase {
    let solution = Medium_2971_Find_Polygon_With_the_Largest_Perimeter()
    
    func test01() {
        let nums = [5,5,5]
        let result = solution.largestPerimeter(nums)
        XCTAssert(result == 15)
    }
    
    func test02() {
        let nums = [1,12,1,2,5,50,3]
        let result = solution.largestPerimeter(nums)
        XCTAssert(result == 12)
    }
    
    func test03() {
        let nums = [5,5,50]
        let result = solution.largestPerimeter(nums)
        XCTAssert(result == -1)
    }
}
