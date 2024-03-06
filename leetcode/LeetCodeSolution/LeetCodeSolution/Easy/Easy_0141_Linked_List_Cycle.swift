//
//  Easy_0141_Linked_List_Cycle.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 06/03/2024.
//

import Foundation

class Easy_0141_Linked_List_Cycle {
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init(_ val: Int) {
            self.val = val
            self.next = nil
        }
    }
     
    func hasCycle(_ head: ListNode?) -> Bool {
        var slow = head
        var fast = head?.next
        
        while slow != nil, fast != nil {
            guard slow !== fast else { return true }
            
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        return false
    }
}
