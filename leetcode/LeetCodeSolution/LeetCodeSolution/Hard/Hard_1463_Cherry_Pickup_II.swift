/*
 https://leetcode.com/problems/cherry-pickup-ii/description/
 
 1463. Cherry Pickup II
 
 You are given a rows x cols matrix grid representing a field of cherries where grid[i][j] represents the number of cherries that you can collect from the (i, j) cell.

 You have two robots that can collect cherries for you:
    Robot #1 is located at the top-left corner (0, 0), and
    Robot #2 is located at the top-right corner (0, cols - 1).
 
 Return the maximum number of cherries collection using both robots by following the rules below:
    From a cell (i, j), robots can move to cell (i + 1, j - 1), (i + 1, j), or (i + 1, j + 1).
    When any robot passes through a cell, It picks up all cherries, and the cell becomes an empty cell.
    When both robots stay in the same cell, only one takes the cherries.
    Both robots cannot move outside of the grid at any moment.
    Both robots should reach the bottom row in grid.
  
 Example 1:
    Input: grid = [[3,1,1],[2,5,1],[1,5,5],[2,1,1]]
    Output: 24
    Explanation: Path of robot #1 and #2 are described in color green and blue respectively.
    Cherries taken by Robot #1, (3 + 2 + 5 + 2) = 12.
    Cherries taken by Robot #2, (1 + 5 + 5 + 1) = 12.
    Total of cherries: 12 + 12 = 24.
 
 Example 2:
    Input: grid = [[1,0,0,0,0,0,1],[2,0,0,0,0,3,0],[2,0,9,0,0,0,0],[0,3,0,5,4,0,0],[1,0,2,3,0,0,6]]
    Output: 28
    Explanation: Path of robot #1 and #2 are described in color green and blue respectively.
    Cherries taken by Robot #1, (1 + 9 + 5 + 2) = 17.
    Cherries taken by Robot #2, (1 + 3 + 4 + 3) = 11.
    Total of cherries: 17 + 11 = 28.
  
 Constraints:
    rows == grid.length
    cols == grid[i].length
    2 <= rows, cols <= 70
    0 <= grid[i][j] <= 100
 
 */

import Foundation

class Hard_1463_Cherry_Pickup_II {
    func cherryPickup(_ grid: [[Int]]) -> Int {
        struct Key : Hashable {
            let row: Int
            let col1: Int
            let col2: Int
        }
        
        let rows = grid.count
        let cols = grid[0].count
        var cache = [Key:Int]()
        
        func dfs(_ row: Int, _ col1: Int, _ col2: Int) -> Int {
            let key = Key(row: row, col1: col1, col2: col2)
            if let result = cache[key] {
                return result
            }
            
            if col1 == col2 || min(col1, col2) < 0 || max(col1, col2) == cols {
                return 0
            }
            
            if row == rows - 1 {
                return grid[row][col1] + grid[row][col2]
            }
            
            var res = 0
            for c1_d in [-1, 0 , 1] {
                for c2_d in [-1, 0 , 1] {
                    res = max(res, dfs(row+1, col1 + c1_d, col2 + c2_d))
                }
            }
            cache[key] = res + grid[row][col1] + grid[row][col2]
            return cache[key] ?? 0
        }
        
        return dfs(0, 0, cols - 1)
    }
}
