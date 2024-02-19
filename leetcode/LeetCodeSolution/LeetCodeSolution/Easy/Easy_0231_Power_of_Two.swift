//
//  Easy_0231_Power_of_Two.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 19/02/2024.
//

import Foundation

class Easy_0231_Power_of_Two {
    func isPowerOfTwo(_ n: Int) -> Bool {
        if n == 0 { return false }
        return (n & (n - 1)) == 0
    }
}
