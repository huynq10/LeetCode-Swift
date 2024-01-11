//
//  Medium_1026_Maximum_Difference_Between_Node_and_Ancestor_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 11/01/2024.
//

import XCTest

class Medium_1026_Maximum_Difference_Between_Node_and_Ancestor_Test : XCTest {
    let solution = Medium_1026_Maximum_Difference_Between_Node_and_Ancestor()
    
    func test01() {
        let root = [8,3,10,1,6,Int.min,14,Int.min,Int.min,4,7,13]
        let node = Medium_1026_Maximum_Difference_Between_Node_and_Ancestor.TreeNode.convertArrayToTree(root)
        let output = solution.maxAncestorDiff(node)
        XCTAssert(output == 7)
    }
    
    func test02() {
        let root = [1,Int.min,2,Int.min,0,3]
        let node = Medium_1026_Maximum_Difference_Between_Node_and_Ancestor.TreeNode.convertArrayToTree(root)
        let output = solution.maxAncestorDiff(node)
        XCTAssert(output == 2)
    }
}
