//
//  Medium_0525_Contiguous_Array.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 16/03/2024.
//

import Foundation

class Medium_0525_Contiguous_Array {
    func findMaxLength(_ nums: [Int]) -> Int {
        var hashmap = [Int: Int]()
        hashmap[0] = -1
        var count = 0
        var ans = 0
        
        for (i, num) in nums.enumerated() {
            count += num == 1 ? 1 : -1
            
            if let prevIndex = hashmap[count] {
                ans = max(ans, i - prevIndex)
            } else {
                hashmap[count] = i
            }
        }
        
        return ans
    }
}
