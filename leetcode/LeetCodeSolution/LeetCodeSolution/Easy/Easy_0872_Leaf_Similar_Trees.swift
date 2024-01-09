//
//  Easy_0872_Leaf_Similar_Trees.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 09/01/2024.
//

import Foundation

class Easy_0872_Leaf_Similar_Trees {
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
    
    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        var arr1:[Int] = []
        var arr2:[Int] = []
        findLeaf(root1, &arr1)
        findLeaf(root2, &arr2)
        return arr1.elementsEqual(arr2)
    }
    
    func findLeaf(_ root: TreeNode?, _ arr:inout [Int]){
        guard let node = root else { return }
        findLeaf(node.left, &arr)
        if node.left == nil && node.right == nil { arr.append(node.val) }
        findLeaf(node.right, &arr)
    }
}
