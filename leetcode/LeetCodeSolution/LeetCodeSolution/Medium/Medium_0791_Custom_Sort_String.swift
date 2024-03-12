//
//  Medium_0791_Custom_Sort_String.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 11/03/2024.
//

import Foundation

class Medium_0791_Custom_Sort_String {
    func customSortString(_ order: String, _ s: String) -> String {
        var counter = Dictionary(s.map{ ($0, 1) }, uniquingKeysWith: +)
        var result = ""
        
        for i in Array(order) {
            result += String(repeating: i, count: counter[i] ?? 0)
            counter[i] = nil
        }
        
        for (k,v) in counter {
            result += String(repeating: k, count: v)
        }
        
        return result
    }
}
