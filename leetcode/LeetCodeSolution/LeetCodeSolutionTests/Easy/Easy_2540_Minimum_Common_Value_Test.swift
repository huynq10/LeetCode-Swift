//
//  Easy_2540_Minimum_Common_Value_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 09/03/2024.
//

import XCTest

class Easy_2540_Minimum_Common_Value_Test : XCTestCase {
    let solution = Easy_2540_Minimum_Common_Value()
    
    func test01() {
        let nums1 = [1,2,3], nums2 = [2,4]
        let res = solution.getCommon(nums1, nums2)
        XCTAssert(res == 2)
    }
    
    func test02() {
        let nums1 = [1,2,3,6], nums2 = [2,3,4,5]
        let res = solution.getCommon(nums1, nums2)
        XCTAssert(res == 2)
    }
    
    func test03() {
        let nums1 = [2,4], nums2 = [1,2]
        let res = solution.getCommon(nums1, nums2)
        XCTAssert(res == 2)
    }
}
