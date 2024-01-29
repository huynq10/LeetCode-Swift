//
//  Easy_0232_Implement_Queue_using_Stacks.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 29/01/2024.
//

import Foundation

class MyQueue {
    private var source: [Int] = .init()
    private var index: Int = 0
        
    func push(_ x: Int) {
        source.append(x)
    }
        
    func pop() -> Int {
        if source.isEmpty || index >= source.count { return -1 }
        let popV = source[index]
        index += 1
        return popV
    }
        
    func peek() -> Int {
        if source.isEmpty { return -1 }
        return source[index]
    }
        
    func empty() -> Bool {
        source.isEmpty || index >= source.count
    }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.peek()
 * let ret_4: Bool = obj.empty()
 */
