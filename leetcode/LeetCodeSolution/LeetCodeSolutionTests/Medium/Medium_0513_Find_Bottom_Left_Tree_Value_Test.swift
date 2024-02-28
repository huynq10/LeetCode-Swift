//
//  Medium_0513_Find_Bottom_Left_Tree_Value_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 28/02/2024.
//

import XCTest

class Medium_0513_Find_Bottom_Left_Tree_Value_Test : XCTestCase {
    let solution = Medium_0513_Find_Bottom_Left_Tree_Value()
    
    func test01() {
        let root = [2,1,3]
        let result = solution.findBottomLeftValue(
            Medium_0513_Find_Bottom_Left_Tree_Value.TreeNode.convertArrayToTree(root)
        )
        XCTAssert(result == 1)
    }
}
