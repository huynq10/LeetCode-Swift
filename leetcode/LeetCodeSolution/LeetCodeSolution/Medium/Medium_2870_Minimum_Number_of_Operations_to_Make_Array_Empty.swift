//
//  Medium_2870_Minimum_Number_of_Operations_to_Make_Array_Empty.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 22/01/2024.
//

import Foundation

class Medium_2870_Minimum_Number_of_Operations_to_Make_Array_Empty {
    func minOperations(_ nums: [Int]) -> Int {
        var count = 0
        var map = [Int:Int]()
        nums.forEach { map[$0, default: 0] += 1 }
        
        var isImpossible = false
        map.forEach { num, occr in
            if occr == 1 {
                isImpossible = true
                return
            }
            let module = occr % 3
            if module == 0 {
                count += (occr / 3)
            }
            else if module == 1 {
                count += ((occr / 3 - 1) + 2)
            }
            else if module == 2 {
                count += (occr / 3 + 1)
            }
        }
        return isImpossible ? -1 : count
    }
}
