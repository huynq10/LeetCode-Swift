//
//  Medium_1642_Furthest_Building_You_Can_Reach.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 17/02/2024.
//

import Foundation

class Medium_1642_Furthest_Building_You_Can_Reach {
    func furthestBuilding(_ heights: [Int], _ bricks: Int, _ ladders: Int) -> Int {
        func canReachBuilding(_ index: Int) -> Bool {
            var sortedDiff = [Int]()
            for i in 0 ..< index {
                let diff = max(0, heights[i+1] - heights[i])
                sortedDiff.append(diff)
            }
            sortedDiff.sort(by: >)
            var bricks = bricks, ladders = ladders
            for diff in sortedDiff {
                if ladders > 0 {
                    ladders -= 1
                } else if bricks >= diff {
                    bricks -= diff
                } else {
                    return false
                }
            }
            return true
        }
        
        var l = 0, r = heights.count - 1
        while l < r {
            let mid = (l+r+1)/2
            if canReachBuilding(mid) {
                l = mid
            } else {
                r = mid - 1
            }
        }
        return l
    }
}
