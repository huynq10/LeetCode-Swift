/*
 https://leetcode.com/problems/roman-to-integer/description/
 70. Climbing Stairs

 You are climbing a staircase. It takes n steps to reach the top.

 Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

 Example 1:
 Input: n = 2
 Output: 2
 Explanation: There are two ways to climb to the top.
 1. 1 step + 1 step
 2. 2 steps
 
 Example 2:
 Input: n = 3
 Output: 3
 Explanation: There are three ways to climb to the top.
 1. 1 step + 1 step + 1 step
 2. 1 step + 2 steps
 3. 2 steps + 1 step
  
 Constraints:

 1 <= n <= 45
 */

import Foundation
var previous:[Int] = [0,1,2,3]

class Easy_0070_Climbing_Stairs {
    func climStairs(_ n: Int) -> Int {
        if (n <= 3) {
            return previous[n]
        }
        
        for i in 4...n {
            let current = previous[i-1] + previous[i-2]
            previous.append(current)
        }
        return previous[n]
    }
}
