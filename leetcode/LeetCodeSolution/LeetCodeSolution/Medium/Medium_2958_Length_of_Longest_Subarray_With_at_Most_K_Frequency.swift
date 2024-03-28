//
//  Medium_2958_Length_of_Longest_Subarray_With_at_Most_K_Frequency.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 28/03/2024.
//

import Foundation

class Medium_2958_Length_of_Longest_Subarray_With_at_Most_K_Frequency {
    func maxSubarrayLength(_ nums: [Int], _ k: Int) -> Int {
        var map = [Int:Int]()
        var start=0, end=0, maxLength=0
        while end < nums.count {
            map[nums[end], default: 0] += 1
            while map[nums[end]]! > k {
                map[nums[start]]! -= 1
                start += 1
            }
            
            maxLength = max(maxLength, end-start+1)
            end += 1
        }
        return maxLength
    }
}
