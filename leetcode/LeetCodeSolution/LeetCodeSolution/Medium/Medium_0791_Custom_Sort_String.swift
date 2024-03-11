//
//  Medium_0791_Custom_Sort_String.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 11/03/2024.
//

import Foundation

class Medium_0791_Custom_Sort_String {
    func customSortString(_ order: String, _ s: String) -> String {
        let orderArr = Array(order)
        
        var counter = [Character:Int]()
        Array(s).forEach {
            counter[$0, default: 0] += 1
        }
        
        var result = String()
        orderArr.forEach { character in
            if let freq = counter[character], freq > 0 {
                result += Array(repeating: character, count: freq)
                counter.removeValue(forKey: character)
            }
        }
        counter.forEach { (key: Character, value: Int) in
            if value > 0 {
                result += Array(repeating: key, count: value)
            }
        }
        
        return result
    }
}
