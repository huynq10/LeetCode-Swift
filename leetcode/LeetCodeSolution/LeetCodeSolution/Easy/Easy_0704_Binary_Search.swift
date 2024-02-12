//
//  Easy_0704_Binary_Search.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 12/02/2024.
//

import Foundation

class Easy_0704_Binary_Search {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var low = 0
        var high = nums.count - 1
        
        while low <= high {
            let mid = (low+high)/2
            let guess = nums[mid]
            if guess == target {
                return mid
            } else if guess > target {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
        
        return -1
    }
}
