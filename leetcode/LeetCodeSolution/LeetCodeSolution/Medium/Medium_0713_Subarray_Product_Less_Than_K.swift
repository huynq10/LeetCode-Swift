//
//  Medium_0713_Subarray_Product_Less_Than_K.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 27/03/2024.
//

import Foundation

class Medium_0713_Subarray_Product_Less_Than_K {
    func numSubarrayProductLessThanK(_ nums: [Int], _ k: Int) -> Int {
        guard k > 1 else {
            return 0
        }
        
        var start=0, ans=0, product=1
        for (end, num) in nums.enumerated() {
            product *= num
            while product >= k {
                product /= nums[start]
                start += 1
            }
            ans += (end-start+1)
        }
        
        return ans
    }
}
