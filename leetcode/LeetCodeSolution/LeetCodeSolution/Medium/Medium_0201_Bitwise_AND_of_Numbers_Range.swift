/*
 https://leetcode.com/problems/bitwise-and-of-numbers-range/description/
 201. Bitwise AND of Numbers Range
 
 Given two integers left and right that represent the range [left, right], return the bitwise AND of all numbers in this range, inclusive.

 Example 1:
    Input: left = 5, right = 7
    Output: 4
 
 Example 2:
    Input: left = 0, right = 0
    Output: 0
 
 Example 3:
    Input: left = 1, right = 2147483647
    Output: 0
  
 Constraints:
    0 <= left <= right <= 231 - 1
 */

import Foundation

class Medium_0201_Bitwise_AND_of_Numbers_Range {
    func rangeBitwiseAnd(_ left: Int, _ right: Int) -> Int {
        var l = left, r = right, i = 0
        while l != r {
            l = l >> 1
            r = r >> 1
            i += 1
        }
        return l << i
    }
}
