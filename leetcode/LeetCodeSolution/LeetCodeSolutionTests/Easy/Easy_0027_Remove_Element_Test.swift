//
//  Easy_0027_Remove_Element_Test.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 07/01/2024.
//

import XCTest

class Easy_0027_Remove_Element_Test: XCTestCase {
    func test0() {
        var array = [3,2,2,3]
        let result = Easy_0027_Remove_Element.removeElement(&array, 3)
        XCTAssertEqual(result, 2)
        XCTAssertEqual(array, [2,2])
    }
    
    func test1() {
        var array = [0,1,2,2,3,0,4,2]
        let result = Easy_0027_Remove_Element.removeElement(&array, 2)
        XCTAssertEqual(result, 5)
        XCTAssertEqual(array, [0,1,3,0,4])
    }

}
