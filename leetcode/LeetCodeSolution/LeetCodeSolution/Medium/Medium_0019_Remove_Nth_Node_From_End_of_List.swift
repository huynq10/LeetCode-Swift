//
//  Medium_0019_Remove_Nth_Node_From_End_of_List.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 03/03/2024.
//

import Foundation

class Medium_0019_Remove_Nth_Node_From_End_of_List {
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init() { self.val = 0; self.next = nil; }
        public init(_ val: Int) { self.val = val; self.next = nil; }
        public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    }
    
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var pre = head, fast = head, slow = head
        for _ in 0 ..< n {
            fast = fast?.next
        }
        
        while fast != nil {
            pre = slow
            slow = slow?.next
            fast = fast?.next
        }
        
        if slow === head {
            return slow?.next
        }
        
        pre?.next = slow?.next
        return head
    }
}
