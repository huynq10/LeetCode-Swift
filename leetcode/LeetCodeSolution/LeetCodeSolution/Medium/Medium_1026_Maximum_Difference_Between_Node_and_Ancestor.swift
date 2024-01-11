/*
 https://leetcode.com/problems/maximum-difference-between-node-and-ancestor/description
 
 Maximum Difference Between Node and Ancestor

 Given the root of a binary tree, find the maximum value v for which there exist different nodes a and b where v = |a.val - b.val| and a is an ancestor of b.

 A node a is an ancestor of b if either: any child of a is equal to b or any child of a is an ancestor of b.

 Example 1:
 Input: root = [8,3,10,1,6,null,14,null,null,4,7,13]
 Output: 7
 Explanation: We have various ancestor-node differences, some of which are given below :
 |8 - 3| = 5
 |3 - 7| = 4
 |8 - 1| = 7
 |10 - 13| = 3
 Among all possible differences, the maximum value of 7 is obtained by |8 - 1| = 7.
 
 Example 2:
 Input: root = [1,null,2,null,0,3]
 Output: 3
  
 Constraints:
 The number of nodes in the tree is in the range [2, 5000].
 0 <= Node.val <= 105
 */

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
