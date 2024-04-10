//
//  Medium_0950_Reveal_Cards_In_Increasing_Order.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 10/4/24.
//

import Foundation

class Medium_0950_Reveal_Cards_In_Increasing_Order {
    func deckRevealedIncreasing(_ deck: [Int]) -> [Int] {
        let count = deck.count
        let sorted = deck.sorted()
        var ans = [Int]()
        ans.append(sorted.last!)
        for i in (0 ..< count-1).reversed() {
            let last = ans.last!
            ans.removeLast()
            ans.insert(last, at: 0)
            ans.insert(sorted[i], at: 0)
        }
        return ans
    }
}
