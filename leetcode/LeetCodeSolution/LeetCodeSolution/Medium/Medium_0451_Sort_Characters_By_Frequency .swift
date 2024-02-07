//
//  Medium_0451_Sort_Characters_By_Frequency .swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 07/02/2024.
//

import Foundation

class Medium_0451_Sort_Characters_By_Frequency {
    func frequencySort(_ s: String) -> String {
        var map = [Character:Int]()
        s.forEach { map[$0, default: 0] += 1 }
        
        var s = String()
        let sorted = map.sorted { $0.value > $1.value }
        sorted.forEach { character, frequency in
            for _ in 0..<frequency {
                s.append(character)
            }
        }
        return s
    }
}
