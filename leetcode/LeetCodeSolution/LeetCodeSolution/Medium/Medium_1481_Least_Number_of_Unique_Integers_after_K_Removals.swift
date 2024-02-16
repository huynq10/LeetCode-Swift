/*
 https://leetcode.com/problems/least-number-of-unique-integers-after-k-removals/description/
 1481. Least Number of Unique Integers after K Removals
 
 Given an array of integers arr and an integer k. Find the least number of unique integers after removing exactly k elements.

 Example 1:
    Input: arr = [5,5,4], k = 1
    Output: 1
    Explanation: Remove the single 4, only 5 is left.
 
 Example 2:
    Input: arr = [4,3,1,1,3,3,2], k = 3
    Output: 2
    Explanation: Remove 4, 2 and either one of the two 1s or three 3s. 1 and 3 will be left.
  
 Constraints:
    1 <= arr.length <= 10^5
    1 <= arr[i] <= 10^9
    0 <= k <= arr.length
 */
import Foundation

class Medium_1481_Least_Number_of_Unique_Integers_after_K_Removals {
    func findLeastNumOfUniqueInts(_ arr: [Int], _ k: Int) -> Int {
        var numToFreq = [Int:Int]()
        arr.forEach { numToFreq[$0, default: 0] += 1 }
        
        var freqSorted = numToFreq.values.sorted()
        var result = freqSorted.count
        var remain = k
        for freq in freqSorted {
            if freq > k {
               break
            }
            
            result -= 1
            remain -= freq
        }
        
        return result
    }
}
