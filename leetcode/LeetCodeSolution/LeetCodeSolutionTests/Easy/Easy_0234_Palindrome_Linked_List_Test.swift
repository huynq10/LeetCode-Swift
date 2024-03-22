//
//  Easy_0234_Palindrome_Linked_List_Test.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 22/03/2024.
//

import XCTest

class Easy_0234_Palindrome_Linked_List_Test : XCTestCase {
    let solution = Easy_0234_Palindrome_Linked_List()
    
    typealias ListNode = Easy_0234_Palindrome_Linked_List.ListNode
    func test01() {
        let head = ListNode(1, ListNode(1, ListNode(2, ListNode(1))))
        let res = solution.isPalindrome(head)
        XCTAssert(res == false)
    }
}
