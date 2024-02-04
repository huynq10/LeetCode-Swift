/*
 https://leetcode.com/problems/sort-colors/description/
 Sort Colors
 
 Given an array nums with n objects colored red, white, or blue, sort them in-place so that objects of the same color are adjacent, with the colors in the order red, white, and blue.

 We will use the integers 0, 1, and 2 to represent the color red, white, and blue, respectively.

 You must solve this problem without using the library's sort function.

 Example 1:
 Input: nums = [2,0,2,1,1,0]
 Output: [0,0,1,1,2,2]
 
 Example 2:
 Input: nums = [2,0,1]
 Output: [0,1,2]
  
 Constraints:
 n == nums.length
 1 <= n <= 300
 nums[i] is either 0, 1, or 2.
 */

import Foundation

class Medium_0075_Sort_Colors {
    func sortColors(_ nums: inout [Int]) {
        var reds = [Int]()
        var whites = [Int]()
        var blues = [Int]()
        
        for num in nums {
            switch num {
            case 0: reds.append(0)
            case 1: whites.append(1)
            case 2: blues.append(2)
            default: fatalError()
            }
        }
        
        nums = reds + whites + blues
    }
}
