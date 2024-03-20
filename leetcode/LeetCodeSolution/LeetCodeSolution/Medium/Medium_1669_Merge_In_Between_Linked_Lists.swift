//
//  Medium_1669_Merge_In_Between_Linked_Lists.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 20/03/2024.
//

import Foundation

class Medium_1669_Merge_In_Between_Linked_Lists {
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init() { self.val = 0; self.next = nil; }
        public init(_ val: Int) { self.val = val; self.next = nil; }
        public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    }
    
    func mergeInBetween(_ list1: ListNode?, _ a: Int, _ b: Int, _ list2: ListNode?) -> ListNode? {
        var current: ListNode? = list1
        var index: Int = 0
        
        while current != nil && index < a - 1 {
            current = current?.next
            index += 1
        }
        let list1HeadEnd: ListNode? = current
        
        while current != nil && index < b {
            current = current?.next
            index += 1
        }
        
        let list1TailStart: ListNode? = current?.next
        current?.next = nil
        
        list1HeadEnd?.next = list2
        current = list2
        
        while current != nil && current?.next != nil {
            current = current?.next
        }
        current?.next = list1TailStart
        
        return list1
    }
}
