/*
 https://leetcode.com/problems/palindrome-number/description/
 
 9. Palindrome Number

 Given an integer x, return true if x is a palindrome, and false otherwise.

 Example 1:
 Input: x = 121
 Output: true
 Explanation: 121 reads as 121 from left to right and from right to left.
 
 Example 2:
 Input: x = -121
 Output: false
 Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
 
 Example 3:
 Input: x = 10
 Output: false
 Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
  

 Constraints:
 -2^31 <= x <= 2^31 - 1
 */

struct Easy_0009_Palindrome_Number {
    static func isPalindrome(_ x: Int32) -> Bool {
        if x == 0 {
            return true
        }
        
        if x < 0 || (x % 10 == 0) {
            return false
        }
        
        if x < 10 {
            return true
        }
        
        var currentX = x
        var digits = [Int32]()
        while currentX > 0 {
            let digit = Int32(currentX % 10)
            digits.append(digit)
            currentX /= 10
        }
        
        let middleIndex = digits.count / 2
        for i in 0..<middleIndex {
            let forwardDigit = digits[i]
            let backwardDigit = digits[digits.count - i - 1]
            if forwardDigit != backwardDigit {
                return false
            }
        }
        
        return true
    }
}
