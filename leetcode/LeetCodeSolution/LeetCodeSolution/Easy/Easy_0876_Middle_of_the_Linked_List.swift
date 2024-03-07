//
//  Easy_0876_Middle_of_the_Linked_List.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 07/03/2024.
//

import Foundation

class Easy_0876_Middle_of_the_Linked_List {
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init() { self.val = 0; self.next = nil; }
        public init(_ val: Int) { self.val = val; self.next = nil; }
        public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    }
    
    func middleNode(_ head: ListNode?) -> ListNode? {
        var slow = head, fast = head
        while fast != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        return slow
    }
}
