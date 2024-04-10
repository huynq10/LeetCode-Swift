//
//  Easy_2073_Time_Needed_to_Buy_Tickets.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 9/4/24.
//

import Foundation

class Easy_2073_Time_Needed_to_Buy_Tickets {
    func timeRequiredToBuy(_ tickets: [Int], _ k: Int) -> Int {
        var max = tickets[k]
        var sum = max
        for (index,ticket) in tickets.enumerated() {
            if index != k {
                let didEndTicket = index > k ? 1 : 0
                sum += (min(ticket, max) + didEndTicket)
            }
        }
        return sum
    }
}
