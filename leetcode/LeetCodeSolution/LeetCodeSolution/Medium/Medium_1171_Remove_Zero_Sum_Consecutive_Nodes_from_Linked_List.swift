//
//  Medium_1171_Remove_Zero_Sum_Consecutive_Nodes_from_Linked_List.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 12/03/2024.
//

import Foundation

class Medium_1171_Remove_Zero_Sum_Consecutive_Nodes_from_Linked_List {
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init() { self.val = 0; self.next = nil; }
        public init(_ val: Int) { self.val = val; self.next = nil; }
        public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    }
    
    func removeZeroSumSublists(_ head: ListNode?) -> ListNode? {
        let dummy = ListNode(0)
        dummy.next = head
        var prefixSum = 0
        var map = [Int: ListNode]()
        map[0] = dummy
        
        var node = head
        while node != nil {
            prefixSum += node!.val
            if let prev = map[prefixSum] {
                var temp = prev.next
                var tempSum = prefixSum
                while temp !== node {
                    tempSum += temp!.val
                    map[tempSum] = nil
                    temp = temp!.next
                }
                prev.next = node!.next
            } else {
                map[prefixSum] = node
            }
            node = node!.next
        }
        
        return dummy.next
    }
}
