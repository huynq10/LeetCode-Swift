//
//  Medium_0380_Insert_Delete_GetRandom_O(1).swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 16/01/2024.
//

import Foundation

class RandomizedSet {
    private var storageSet = Set<Int>()
    
    init() {
        
    }
    
    func insert(_ val: Int) -> Bool {
        if storageSet.contains(val) {
            return false
        }
        
        storageSet.insert(val)
        return true
    }
    
    func remove(_ val: Int) -> Bool {
        if storageSet.contains(val) == false {
            return false
        }
        
        storageSet.remove(val)
        return true
    }
    
    func getRandom() -> Int {
        return storageSet.randomElement()!
    }
}
