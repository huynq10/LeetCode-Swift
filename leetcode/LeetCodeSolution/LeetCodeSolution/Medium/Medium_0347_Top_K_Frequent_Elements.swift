//
//  Medium_0347_Top_K_Frequent_Elements.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 07/02/2024.
//

import Foundation

class Medium_0347_Top_K_Frequent_Elements {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var map = [Int:Int]()
        nums.forEach { map[$0, default: 0] += 1 }
        
        var buckets = Array(repeating: [Int](), count: nums.count + 1)
        for (num, freq) in map {
            buckets[freq].append(num)
        }
        
        var result = [Int]()
        for bucket in buckets.reversed() {
            result += bucket
            if result.count == k {
                break
            }
        }
        
        return result
    }
}
  
