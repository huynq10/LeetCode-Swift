//
//  Medium_2149_Rearrange_Array_Elements_by_Sign.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 14/02/2024.
//

import Foundation

class Medium_2149_Rearrange_Array_Elements_by_Sign {
    func rearrangeArray(_ nums: [Int]) -> [Int] {
        var positives = [Int]()
        var negatives = [Int]()
        
        for num in nums {
            if num >= 0 {
                positives.append(num)
            } else {
                negatives.append(num)
            }
        }
        
        var elements = [Int]()
        for i in 0..<positives.count {
            elements.append(positives[i])
            elements.append(negatives[i])
        }
        
        return elements
    }
}
