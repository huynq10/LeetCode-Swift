/*
 https://leetcode.com/problems/daily-temperatures/description/?envType=daily-question&envId=2024-01-31
 739. Daily Temperatures

 Given an array of integers temperatures represents the daily temperatures, return an array answer such that answer[i] is the number of days you have to wait after the ith day to get a warmer temperature. If there is no future day for which this is possible, keep answer[i] == 0 instead.

 Example 1:
    Input: temperatures = [73,74,75,71,69,72,76,73]
    Output: [1,1,4,2,1,1,0,0]
 
 Example 2:
    Input: temperatures = [30,40,50,60]
    Output: [1,1,1,0]
 
 Example 3:
    Input: temperatures = [30,60,90]
    Output: [1,1,0]
  
 Constraints:
    1 <= temperatures.length <= 105
    30 <= temperatures[i] <= 100
 */

import Foundation

class Medium_0739_Daily_Temperatures {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var stack = Array<Int>()
        var result = Array(repeating: 0, count: temperatures.count)
        for i in 0 ..< temperatures.count {
            while !stack.isEmpty && temperatures[stack.last!] < temperatures[i] {
                let index = stack.removeLast()
                result[index] = i - index
            }
            stack.append(i)
        }
        return result
    }
}
