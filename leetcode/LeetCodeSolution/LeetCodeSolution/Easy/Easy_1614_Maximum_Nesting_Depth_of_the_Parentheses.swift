//
//  Easy_1614_Maximum_Nesting_Depth_of_the_Parentheses.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 4/4/24.
//

import Foundation

class Easy_1614_Maximum_Nesting_Depth_of_the_Parentheses {
    func maxDepth(_ s: String) -> Int {
        var level = 0, maxDept = 0
        for c in s {
            if c == "(" {
                level += 1
                maxDept = max(level, maxDept)
            }
            else if c == ")" {
                level -= 1
            }
        }
        return maxDept
    }
}
