/*
 https://leetcode.com/problems/search-a-2d-matrix/description/
 
 You are given an m x n integer matrix matrix with the following two properties:
    - Each row is sorted in non-decreasing order.
    - The first integer of each row is greater than the last integer of the previous row.
 Given an integer target, return true if target is in matrix or false otherwise.
 You must write a solution in O(log(m * n)) time complexity.

 Example 1:
    Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 3
    Output: true
 
 Example 2:
    Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 13
    Output: false
 
 Constraints:
    m == matrix.length
    n == matrix[i].length
    1 <= m, n <= 100
    -104 <= matrix[i][j], target <= 104
 */

import Foundation

class Medium_0074_Search_a_2D_Matrix {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let array = matrix.flatMap { $0 }
        var left = 0, right = array.count - 1
        while left <= right {
            let mid = (left + right) / 2
            let guess = array[mid]
            if guess == target {
                return true
            } else if guess > target {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        return false
    }
}
