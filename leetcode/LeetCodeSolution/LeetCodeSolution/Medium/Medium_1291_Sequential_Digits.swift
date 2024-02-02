//
//  Medium_1291_Sequential_Digits.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 03/02/2024.
//

import Foundation

class Medium_1291_Sequential_Digits {
    func sequentialDigits(_ low: Int, _ high: Int) -> [Int] {
        let largest = Array("123456789")
        var result = [Int]()

        for i in 1...8 {
            for j in 0...7 {
                if i + j < 9 {
                    let num = Int(String(largest[j...(i + j)]))!
                    if num >= low, num <= high {
                        result.append(num)
                    } else if num > high {
                        break
                    }
                }
            }
        }

        return result
    }
}
