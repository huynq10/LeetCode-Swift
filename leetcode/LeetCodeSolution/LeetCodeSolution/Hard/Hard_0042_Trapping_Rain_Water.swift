/*
 https://leetcode.com/problems/trapping-rain-water/description/

 Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it can trap after raining.

 Example 1:
    Input: height = [0,1,0,2,1,0,1,3,2,1,2,1]
    Output: 6
    Explanation: The above elevation map (black section) is represented by array [0,1,0,2,1,0,1,3,2,1,2,1]. In this case, 6 units of rain water (blue section) are being trapped.
 
 Example 2:
    Input: height = [4,2,0,3,2,5]
    Output: 9
  
 Constraints:
    n == height.length
    1 <= n <= 2 * 104
    0 <= height[i] <= 105
 */

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
