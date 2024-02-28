//
//  Medium_0513_Find_Bottom_Left_Tree_Value.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 28/02/2024.
//

import Foundation

class Medium_0513_Find_Bottom_Left_Tree_Value {
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
    
    func findBottomLeftValue(_ root: TreeNode?) -> Int {
        guard root != nil else { return 0 }
        
        var current = -1
        var ans = 0
        func dfs(_ node: TreeNode?, level: Int) {
            guard let node = node else {
                return
            }
            
            if level > current {
                ans = node.val
                current = level
            }
            
            dfs(node.left, level: level + 1)
            dfs(node.right, level: level + 1)
        }
        
        dfs(root, level: 0)
        return ans
    }
}
