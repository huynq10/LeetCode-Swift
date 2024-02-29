//
//  Medium_1609_Even_Odd_Tree.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 29/02/2024.
//

import Foundation

class Medium_1609_Even_Odd_Tree {
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
    
    func isEvenOddTree(_ root: TreeNode?) -> Bool {
        guard let root = root else { return false }
        
        var queue = [root]
        var level = 0
        while !queue.isEmpty {
            let nodes = queue
            let vals = queue.compactMap { $0.val }
            if level % 2 == 0 {
                var last = Int.min
                for val in vals {
                    if val <= last || val % 2 == 0 {
                        return false
                    }
                    last = val
                }
            } else {
                var last = Int.max
                for val in vals {
                    if val >= last || val % 2 == 1 {
                        return false
                    }
                    last = val
                }
            }
            queue.removeAll()
            
            for node in nodes {
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }
            level += 1
        }
        
        return true
    }
}
