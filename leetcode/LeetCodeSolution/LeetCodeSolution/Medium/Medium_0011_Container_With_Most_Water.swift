//
//  Medium_0011_Container_With_Most_Water.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 12/02/2024.
//

import Foundation

class Medium_0011_Container_With_Most_Water {
    func maxArea(_ height: [Int]) -> Int {
        var res = 0
        let len = height.count
        var left = 0
        var right = height.count - 1
        while left < right {
            let minHeight = min(height[left], height[right]) * (right - left)
            res = max(res, minHeight)
            
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        return res
    }
}
