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
        
        var buckets = [[Character]](repeating: [Character](), count: s.count + 1)
        map.forEach { char, freq in
            buckets[freq].append(char)
        }
        
        var s = String()
        for i in (0..<buckets.count).reversed() {
            let bucket = buckets[i]
            for char in bucket {
                s.append(String(repeating: char, count: i))
            }
        }
        
        return s
    }
}
