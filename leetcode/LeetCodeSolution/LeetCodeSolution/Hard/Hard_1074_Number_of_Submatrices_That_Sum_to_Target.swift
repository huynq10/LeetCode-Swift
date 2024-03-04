//
//  Hard_1074_Number_of_Submatrices_That_Sum_to_Target.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 03/03/2024.
//

import Foundation

class Hard_1074_Number_of_Submatrices_That_Sum_to_Target {
    func numSubmatrixSumTarget(_ matrix: [[Int]], _ target: Int) -> Int {
        let rows = matrix.count
        let cols = matrix[0].count
        
        var prefixSums = Array(repeating: Array(repeating: 0, count: cols + 1), count: rows + 1)
        for row in 0 ..< rows {
            for col in 0 ..< cols {
                var prefixSum = matrix[row][col]
                prefixSum += prefixSums[row + 1][col]
                prefixSum += prefixSums[row][col + 1]
                prefixSum -= prefixSums[row][col]
                prefixSums[row + 1][col + 1] = prefixSum
            }
        }
        
        var count = 0
        for row1 in 1 ... rows {
            for col1 in 1 ... cols {
                for row2 in row1 ... rows {
                    for col2 in col1 ... cols {
                        var submatrixSum = prefixSums[row2][col2]
                        submatrixSum -= prefixSums[row1 - 1][col2]
                        submatrixSum -= prefixSums[row2][col1 - 1]
                        submatrixSum += prefixSums[row1 - 1][col1 - 1]
                        
                        if submatrixSum == target {
                            count += 1
                        }
                    }
                }
            }
        }
        return count
    }
}
