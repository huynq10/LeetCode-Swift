//
//  Easy_0026_Remove_Duplicates_From_Sorted_Array_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 06/01/2024.
//

import XCTest

class Easy_0026_Remove_Duplicates_From_Sorted_Array_Test : XCTestCase {
    func test01() {
        var array = [1,1,2]
        let result = Easy_0026_Remove_Duplicates_From_Sorted_Array.removeDuplicates(&array)
        XCTAssertEqual(result, [1,2].count)
    }
    
    func test02() {
        var array = [0,0,1,1,1,2,2,3,3,4]
        let result = Easy_0026_Remove_Duplicates_From_Sorted_Array.removeDuplicates(&array)
        XCTAssertEqual(result, [0,1,2,3,4].count)
    }
}
