//
//  Medium_1026_Maximum_Difference_Between_Node_and_Ancestor.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 11/01/2024.
//

import Foundation

class Medium_1026_Maximum_Difference_Between_Node_and_Ancestor {
    public class TreeNode {
        public var val: Int
        public var left: TreeNode?
        public var right: TreeNode?
        public init() { self.val = 0; self.left = nil; self.right = nil; }
        public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
        public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
            self.val = val
            self.left = left
            self.right = right
        }
        
        public static func convertArrayToTree(_ arr: [Int]) -> TreeNode
        {
            let root: TreeNode = TreeNode.init(arr[0], nil, nil)
            var fifoQueue: [TreeNode] = [root]
            var i = 1
            while i < arr.count {
                let node: TreeNode = fifoQueue.removeFirst()
                if arr[i] == Int.min {
                    node.left = nil
                } else {
                    node.left = TreeNode.init(arr[i], nil, nil)
                    fifoQueue.append(node.left!)
                }
                if arr[i+1] == Int.min {
                    node.right = nil
                } else {
                    node.right = TreeNode.init(arr[i+1], nil, nil)
                    fifoQueue.append(node.right!)
                }
                i += 2
            }
            return root
        }
    }
    
    func maxAncestorDiff(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        
        // DFS to find min and max value in every leaf.
        func dfs(_ node: TreeNode?, _ minValue: Int, _ maxValue: Int) -> Int {
            guard let node = node else {
                return maxValue - minValue
            }
            
            let newMinValue = min(minValue, node.val)
            let newMaxValue = max(maxValue, node.val)
            let left = dfs(node.left, newMinValue, newMaxValue)
            let right = dfs(node.right, newMinValue, newMaxValue)
            return max(left, right)
        }
        
        return dfs(root, root.val, root.val)
    }
}
