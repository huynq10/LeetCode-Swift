//
//  Easy_0206_Reverse_Linked_List.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 21/03/2024.
//

import Foundation

class Easy_0206_Reverse_Linked_List {
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init() { self.val = 0; self.next = nil; }
        public init(_ val: Int) { self.val = val; self.next = nil; }
        public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    }
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        var prev = head, node = prev?.next
        prev?.next = nil
        
        while node != nil {
            let next = node!.next
            node!.next = prev
            prev = node
            node = next
        }
        return prev
    }
}