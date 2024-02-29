/*
 https://leetcode.com/problems/even-odd-tree/description/
 1609. Even Odd Tree

 A binary tree is named Even-Odd if it meets the following conditions:

 The root of the binary tree is at level index 0, its children are at level index 1, their children are at level index 2, etc.
 For every even-indexed level, all nodes at the level have odd integer values in strictly increasing order (from left to right).
 For every odd-indexed level, all nodes at the level have even integer values in strictly decreasing order (from left to right).
 Given the root of a binary tree, return true if the binary tree is Even-Odd, otherwise return false.

 Example 1:
    Input: root = [1,10,4,3,null,7,9,12,8,6,null,null,2]
    Output: true
    Explanation: The node values on each level are:
        Level 0: [1]
        Level 1: [10,4]
        Level 2: [3,7,9]
        Level 3: [12,8,6,2]
        Since levels 0 and 2 are all odd and increasing and levels 1 and 3 are all even and decreasing, the tree is Even-Odd.
 
 Example 2:
    Input: root = [5,4,2,3,3,7]
    Output: false
    Explanation: The node values on each level are:
        Level 0: [5]
        Level 1: [4,2]
        Level 2: [3,3,7]
        Node values in level 2 must be in strictly increasing order, so the tree is not Even-Odd.
 
 Example 3:
    Input: root = [5,9,1,3,5,7]
    Output: false
    Explanation: Node values in the level 1 should be even integers.
  
 Constraints:
    The number of nodes in the tree is in the range [1, 105].
    1 <= Node.val <= 106
 */

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
