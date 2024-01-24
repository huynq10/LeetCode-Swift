/*
 https://leetcode.com/problems/minimum-number-of-steps-to-make-two-strings-anagram/description/
 
 1347. Minimum Number of Steps to Make Two Strings Anagram

 You are given two strings of the same length s and t. In one step you can choose any character of t and replace it with another character.

 Return the minimum number of steps to make t an anagram of s.

 An Anagram of a string is a string that contains the same characters with a different (or the same) ordering.

 Example 1:
 Input: s = "bab", t = "aba"
 Output: 1
 Explanation: Replace the first 'a' in t with b, t = "bba" which is anagram of s.
 
 Example 2:
 Input: s = "leetcode", t = "practice"
 Output: 5
 Explanation: Replace 'p', 'r', 'a', 'i' and 'c' from t with proper characters to make t anagram of s.
 
 Example 3:
 Input: s = "anagram", t = "mangaar"
 Output: 0
 Explanation: "anagram" and "mangaar" are anagrams.
  
 Constraints:
 1 <= s.length <= 5 * 104
 s.length == t.length
 s and t consist of lowercase English letters only.
 */

import Foundation

class Medium_1347_Minimum_Number_of_Steps_to_Make_Two_Strings_Anagram {
    func minSteps(_ s: String, _ t: String) -> Int {
        // Count difference of characters in s an t.
        var freq: [Character: Int] = [:]
        s.forEach { freq[$0, default: 0] += 1 }
        t.forEach { freq[$0, default: 0] -= 1 }
        
        // The sum of positive values is the answer as it represents
        // the number of characters that need to be replaced by something
        // else.
        return freq.values.filter({ $0 > 0}).reduce(0, +)
    }
}
