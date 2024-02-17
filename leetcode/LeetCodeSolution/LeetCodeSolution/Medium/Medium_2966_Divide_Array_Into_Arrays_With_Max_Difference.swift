//
//  Medium_2966_Divide_Array_Into_Arrays_With_Max_Difference.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 17/02/2024.
//

import Foundation

class Medium_2966_Divide_Array_Into_Arrays_With_Max_Difference {
    func divideArray(_ nums: [Int], _ k: Int) -> [[Int]] {
        let sorted = nums.sorted()
        var lastArr = [Int]()
        var result = [[Int]]()
        for i in 0 ..< sorted.count / 3 {
            let l = sorted[i * 3]
            let m = sorted[i * 3 + 1]
            let r = sorted[i * 3 + 2]
            
            if m - l > k || r - m > k || r - l > k {
                return []
            }
            
            lastArr = [l,m,r]
            result.append(lastArr)
        }
        return result
    }
}
