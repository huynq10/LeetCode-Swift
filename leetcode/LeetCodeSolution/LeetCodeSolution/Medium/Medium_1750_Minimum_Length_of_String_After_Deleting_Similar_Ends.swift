//
//  Medium_1750_Minimum_Length_of_String_After_Deleting_Similar_Ends.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 05/03/2024.
//

import Foundation

class Medium_1750_Minimum_Length_of_String_After_Deleting_Similar_Ends {
    func minimumLength(_ s: String) -> Int {
        guard s.count != 1 else { return 1 }
        var (start, end) = (s.startIndex, s[before: s.endIndex])
        
        while start < end, s[start] == s[end] {
            let char = s[start]
            
            while start <= end, s[start] == char {
                start = s[after: start]
            }
            while end > start, s[end] == char {
                end = s[before: end]
            }
        }
        return s.distance(from: start, to: end) + 1
    }
}

extension String {
    subscript(after idx: Index) -> Index {
        index(after: idx)
    }

    subscript(before idx: Index) -> Index {
        index(before: idx)
    }
}
