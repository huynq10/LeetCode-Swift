//
//  Medium_2385_Amount_of_Time_for_Binary_Tree_to_Be_Infected.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 10/01/2024.
//

import Foundation

class Medium_2385_Amount_of_Time_for_Binary_Tree_to_Be_Infected {
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
        
    func amountOfTime(_ root: TreeNode?, _ start: Int) -> Int {
        var answer = 0

        // Returns distance to the start. Negative values mean
        // that the start is not in the leaf.
        func dfs(_ root: TreeNode?, _ start: Int) -> Int {
            guard let root = root else { return -1 }

            // Traverse children.
            let left = dfs(root.left, start)
            let right = dfs(root.right, start)

            let startDistance = root.val == start ? 0 : max(left, right)
            let maxDepth = min(left, right)

            if startDistance >= 0 {
                // Start found in a child node.
                answer = max(answer, startDistance - maxDepth - 1)
                return startDistance + 1
            } else {
                // Return the max depth.
                return maxDepth - 1
            }
        }

        let _ = dfs(root, start)

        return answer
    }
}
