//
//  Medium_0036_Valid_Sudoku.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 09/02/2024.
//

import Foundation

class Medium_0036_Valid_Sudoku {
    func isValidSudoku(_ board: [[String]]) -> Bool {
        var rows = Array(repeating: Set<Int>(), count: 9)
        var cols = Array(repeating: Set<Int>(), count: 9)
        var subBoxes = Array(repeating: Set<Int>(), count: 9)
        
        for i in 0 ..< 9 {
            for j in 0 ..< 9 {
                let char = board[i][j]
                if let num = Int(char) {
                    let z = (i/3) * 3 + j/3
                    if rows[i].contains(num) || cols[j].contains(num) || subBoxes[z].contains(num) {
                        return false
                    }
                    
                    rows[i].insert(num)
                    cols[j].insert(num)
                    subBoxes[z].insert(num)
                }
            }
        }
        
        return true
    }
}
