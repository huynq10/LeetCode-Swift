/*
https://leetcode.com/problems/determine-if-string-halves-are-alike/description/?envType=daily-question&envId=2024-01-12

1704. Determine if String Halves Are Alike

You are given a string s of even length. Split this string into two halves of equal lengths, and let a be the first half and b be the second half.
Two strings are alike if they have the same number of vowels ('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'). Notice that s contains uppercase and lowercase letters.
Return true if a and b are alike. Otherwise, return false.

Example 1:
Input: s = "book"
Output: true
Explanation: a = "bo" and b = "ok". a has 1 vowel and b has 1 vowel. Therefore, they are alike.

Example 2:
Input: s = "textbook"
Output: false
Explanation: a = "text" and b = "book". a has 1 vowel whereas b has 2. Therefore, they are not alike.
Notice that the vowel o is counted twice.
 
Constraints:
2 <= s.length <= 1000
s.length is even.
s consists of uppercase and lowercase letters.

*/

import Foundation

class Easy_1704_Determine_if_String_Halves_Are_Alike {
    func halvesAreAlike(_ s: String) -> Bool {
        let s = Array(s.lowercased())
        let half = s.count / 2
        let vowels: [Character] = ["a", "i", "u", "e", "o"]
        var first = 0, second = 0
        
        for i in 0..<half {
            first += vowels.contains(s[i]) ? 1 : 0
            second += vowels.contains(s[i + half]) ? 1 : 0
        }
        
        return first == second
    }
}
