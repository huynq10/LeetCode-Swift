//
//  Medium_0150_Evaluate_Reverse_Polish_Notation.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 30/01/2024.
//

import Foundation

class Medium_0150_Evaluate_Reverse_Polish_Notation {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack = [Int]()

        for token in tokens {
            if let num = Int(token) { stack.append(num); continue }
            let sec = stack.removeLast()
            let fir = stack.removeLast()

            switch token {
            case "+": stack.append(fir + sec)
            case "-": stack.append(fir - sec)
            case "*": stack.append(fir * sec)
            case "/": stack.append(fir / sec)
            default:
                fatalError("invalid.")
            }
        }
        return stack[0]
    }
}
