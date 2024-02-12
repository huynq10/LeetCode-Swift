//
//  Hard_0042_Trapping_Rain_Water.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 12/02/2024.
//

import Foundation

class Hard_0042_Trapping_Rain_Water {
    func trap(_ height: [Int]) -> Int {
        var maxLeft = Array(repeating: 0, count: height.count)
        var maxRight = Array(repeating: 0, count: height.count)
        
        var currentMax = 0
        for i in 1 ..< height.count {
            if height[i-1] > currentMax {
                currentMax = height[i-1]
            }
            maxLeft[i] = currentMax
        }

        currentMax = 0
        for i in stride(from: height.count - 2, to: -1, by: -1) {
            if height[i+1] > currentMax {
                currentMax = height[i+1]
            }
            maxRight[i] = currentMax
        }
        
        var res = 0
        for i in 0 ..< height.count {
            res += max(min(maxLeft[i], maxRight[i]) - height[i], 0)
        }
        
        return res
    }
}
