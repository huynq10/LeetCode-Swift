//
//  Medium_0451_Sort_Characters_By_Frequency_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 07/02/2024.
//

import XCTest

class Medium_0451_Sort_Characters_By_Frequency_Test : XCTestCase {
    let solution = Medium_0451_Sort_Characters_By_Frequency()
    
    func test01() {
        let s = "tree"
        let result = solution.frequencySort(s)
        XCTAssert(result == "eetr")
    }
    
    func test02() {
        let s = "cccaaa"
        let result = solution.frequencySort(s)
        XCTAssert(result == "aaaccc")
    }
    
    func test03() {
        let s = "Aabb"
        let result = solution.frequencySort(s)
        XCTAssert(result == "bbAa")
    }
}
