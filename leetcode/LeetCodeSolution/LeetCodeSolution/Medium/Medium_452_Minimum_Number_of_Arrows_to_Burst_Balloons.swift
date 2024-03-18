//
//  Medium_452_Minimum_Number_of_Arrows_to_Burst_Balloons.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 18/03/2024.
//

import Foundation

class Medium_452_Minimum_Number_of_Arrows_to_Burst_Balloons {
    func findMinArrowShots(_ points: [[Int]]) -> Int {
        let points = points.sorted(by: { $0[1] < $1[1] })
        var end = points[0][1]
        var arrows = 1
        
        for point in points {
            if point[0] > end {
                arrows += 1
                end = point[1]
            }
        }
        
        return arrows
    }
}
