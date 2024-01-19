//
//  Medium_0931_Minimum_Falling_Path_Sum.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 19/01/2024.
//

import Foundation

class Medium_0931_Minimum_Falling_Path_Sum {
    func minFallingPathSum(_ matrix: [[Int]]) -> Int {
        let len = matrix.count, n = matrix[0].count
        if len <= 1 { return len == 0 ? 0 : matrix[0].min()! }
        var mat: [[Int]] = matrix
        for i in 1..<len {
            for j in 0..<n {
                var tmp = mat[i-1][j]
                if j + 1 < n { tmp = min(tmp, mat[i-1][j+1]) }
                if j - 1 >= 0 { tmp = min(tmp, mat[i-1][j-1]) }
                mat[i][j] += tmp
            }
        }
        return mat.last!.min()!
    }
}
