//
//  Medium_1609_Even_Odd_Tree_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 29/02/2024.
//

import XCTest

typealias TreeNode = Medium_1609_Even_Odd_Tree.TreeNode

class Medium_1609_Even_Odd_Tree_Test : XCTestCase {
    let solution = Medium_1609_Even_Odd_Tree()
    
    func test01() {
        let root = [1,10,4,3,Int.min,7,9,12,8,6,Int.min,Int.min,2]
        let rootNode = TreeNode.convertArrayToTree(root)
        let res = solution.isEvenOddTree(rootNode)
        XCTAssert(res == true)
    }
    
    func test02() {
        let rootNode = TreeNode(
            5,
            TreeNode(4, TreeNode(3), TreeNode(3)),
            TreeNode(2, TreeNode(7), nil)
        )
        let res = solution.isEvenOddTree(rootNode)
        XCTAssert(res == false)
    }
    
    func test03() {
        let rootNode = TreeNode(
            5,
            TreeNode(9, TreeNode(3), TreeNode(5)),
            TreeNode(1, TreeNode(7), nil)
        )
        let res = solution.isEvenOddTree(rootNode)
        XCTAssert(res == false)
    }
}
