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
        guard let head = head else { return nil }
        var node:ListNode? = head
        var arr = [ListNode]()
        while node != nil {
            arr.append(node!)
            node = node!.next
        }

        var result: ListNode?
        if n == arr.count {
            result = head.next
        } else {
            let removedNode = arr[arr.count - n]
            let preNode = arr[arr.count - n - 1]
            preNode.next = removedNode.next
            result = head
        }
       
        return result
    }
}
