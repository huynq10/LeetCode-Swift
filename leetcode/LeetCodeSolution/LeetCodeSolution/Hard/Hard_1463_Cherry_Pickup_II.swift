//
//  Hard_1463_Cherry_Pickup_II.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 11/02/2024.
//

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
