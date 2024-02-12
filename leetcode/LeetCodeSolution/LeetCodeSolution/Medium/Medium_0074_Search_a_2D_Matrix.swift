//
//  Medium_0074_Search_a_2D_Matrix.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 12/02/2024.
//

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
