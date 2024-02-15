//
//  Medium_2971_Find_Polygon_With_the_Largest_Perimeter.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 15/02/2024.
//

import Foundation

class Medium_2971_Find_Polygon_With_the_Largest_Perimeter {
    func largestPerimeter(_ nums: [Int]) -> Int {
        let sortedNums = nums.sorted()
        var sum = sortedNums.reduce(0, +)
        for num in sortedNums.reversed() {
            let pSum = sum - num
            if pSum <= num {
                sum -= num
            }
        }

        return sum != 0 ? sum : -1
    }
}
