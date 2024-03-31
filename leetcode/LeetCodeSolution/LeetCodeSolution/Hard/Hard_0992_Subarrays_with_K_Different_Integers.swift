//
//  Hard_0992_Subarrays_with_K_Different_Integers.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 30/03/2024.
//

import Foundation

class Hard_0992_Subarrays_with_K_Different_Integers {
    func subarraysWithKDistinct(_ nums: [Int], _ k: Int) -> Int {
        let res =
        subarraysWithAtMostKDistinct(nums, k) -
        subarraysWithAtMostKDistinct(nums, k-1)
        return res
    }
    
    func subarraysWithAtMostKDistinct(_ nums: [Int], _ k: Int) -> Int {
        var map = Dictionary<Int, Int>()
        var start=0, end=0, count=0
        while end < nums.count {
            map[nums[end], default: 0] += 1
            while map.count > k {
                map[nums[start]]! -= 1
                if map[nums[start]]! == 0 {
                    map[nums[start]] = nil
                }
                start += 1
            }
            count += (end - start + 1)
            end += 1
        }
        return count
    }
}
