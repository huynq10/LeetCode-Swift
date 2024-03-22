//
//  Easy_0234_Palindrome_Linked_List.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 22/03/2024.
//

import Foundation

class Easy_0234_Palindrome_Linked_List {
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init() { self.val = 0; self.next = nil; }
        public init(_ val: Int) { self.val = val; self.next = nil; }
        public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    }
        
    func isPalindrome(_ head: ListNode?) -> Bool {
        var head = head
        var slow = head
        var fast = head?.next
        
        while fast != nil && fast?.next != nil {
            fast = fast?.next?.next
            slow = slow?.next
        }
        
        var prev: ListNode? = nil
        slow = slow?.next
        while slow?.next != nil {
            var nextNode = slow?.next
            slow?.next = prev
            prev = slow
            slow = nextNode
        }
        
        slow?.next = prev
        while slow != nil {
            guard head?.val == slow?.val else { return false }
            slow = slow?.next
            head = head?.next
        }
        
        return true
    }
}
