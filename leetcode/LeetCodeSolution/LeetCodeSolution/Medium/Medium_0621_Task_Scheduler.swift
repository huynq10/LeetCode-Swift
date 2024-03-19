//
//  Medium_0621_Task_Scheduler.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 19/03/2024.
//

import Foundation

class Medium_0621_Task_Scheduler {
    func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
        let counter = Dictionary(tasks.map{ ($0, 1) }, uniquingKeysWith: +)
        let maxCount = counter.values.max()!
        let maxCountsNum = counter.values.filter{$0 == maxCount}.count
        let res = (maxCount - 1) * (n + 1) + maxCountsNum
        return max(tasks.count, res)
    }
}
