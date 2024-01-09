//
//  Easy_0872_Leaf_Similar_Trees_Test.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 10/01/2024.
//

import XCTest

class Easy_0872_Leaf_Similar_Trees_Test : XCTestCase {
    let solution = Easy_0872_Leaf_Similar_Trees()
    func test_01() {
        let root1 = [3,5,1,6,2,9,8,Int.min,Int.min,7,4]
        let root2 = [3,5,1,6,7,4,2,Int.min,Int.min,Int.min,Int.min,Int.min,Int.min,9,8]
        
        let node1 = Easy_0872_Leaf_Similar_Trees.TreeNode.convertArrayToTree(root1)
        let node2 = Easy_0872_Leaf_Similar_Trees.TreeNode.convertArrayToTree(root2)
        let output = solution.leafSimilar(node1, node2)
        XCTAssert(output == true)
    }
    
    func test_02() {
        let root1 = [1, 2, 3]
        let root2 = [1, 3, 2]
        
        let node1 = Easy_0872_Leaf_Similar_Trees.TreeNode.convertArrayToTree(root1)
        let node2 = Easy_0872_Leaf_Similar_Trees.TreeNode.convertArrayToTree(root2)
        let output = solution.leafSimilar(node1, node2)
        XCTAssert(output == false)
    }
}
