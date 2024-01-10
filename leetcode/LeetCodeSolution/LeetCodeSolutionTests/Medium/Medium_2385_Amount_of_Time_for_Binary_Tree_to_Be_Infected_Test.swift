//
//  Medium_2385_Amount_of_Time_for_Binary_Tree_to_Be_Infected_Test.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 10/01/2024.
//

import XCTest

class Medium_2385_Amount_of_Time_for_Binary_Tree_to_Be_Infected_Test : XCTest {
    let solution = Medium_2385_Amount_of_Time_for_Binary_Tree_to_Be_Infected()
    
    func test01() {
        let root = [1,5,3,Int.min,4,10,6,9,2]
        let node = Medium_2385_Amount_of_Time_for_Binary_Tree_to_Be_Infected.TreeNode.convertArrayToTree(root)
        let output = solution.amountOfTime(node, 3)
        XCTAssert(output == 4)
    }
    
    func test02() {
        let root = [1]
        let node = Medium_2385_Amount_of_Time_for_Binary_Tree_to_Be_Infected.TreeNode.convertArrayToTree(root)
        let output = solution.amountOfTime(node, 1)
        XCTAssert(output == 4)
    }
}
