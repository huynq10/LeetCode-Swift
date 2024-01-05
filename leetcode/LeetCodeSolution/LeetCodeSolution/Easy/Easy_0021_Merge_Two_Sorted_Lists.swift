//
//  Easy_0021_Merge_Two_Sorted_Lists.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 05/01/2024.
//

import Foundation

struct Easy_0021_Merge_Two_Sorted_Lists {
    class Node {
        var value: Int
        var next: Node?
        init (value: Int = 0, next: Node? = nil) {
            self.value = value
            self.next = next
        }
    }
    
    static func mergeTwoLists(l1 list1: Node?, l2 list2: Node?) -> Node? {
        var l1 = list1
        var l2 = list2
        let dummy: Node = Node()
        var cursor: Node? = dummy
        while l1 != nil && l2 != nil {
            if l1!.value < l2!.value {
                cursor?.next = l1
                l1 = l1?.next
            } else {
                cursor?.next = l2
                l2 = l2?.next
            }
            cursor = cursor?.next
        }
        cursor?.next = l1 != nil ? l1 : l2
        return dummy.next
    }
}
