//
//  Medium_0075_Sort_Colors.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 04/02/2024.
//

import Foundation

class Medium_0075_Sort_Colors {
    func sortColors(_ nums: inout [Int]) {
        var reds = [Int]()
        var whites = [Int]()
        var blues = [Int]()
        
        for num in nums {
            switch num {
            case 0: reds.append(0)
            case 1: whites.append(1)
            case 2: blues.append(2)
            default: fatalError()
            }
        }
        
        nums = reds + whites + blues
    }
}
