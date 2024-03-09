//
//  Easy_2540_Minimum_Common_Value.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 09/03/2024.
//

import Foundation

class Easy_2540_Minimum_Common_Value {
    func getCommon(_ nums1: [Int], _ nums2: [Int]) -> Int {
        var i = 0, j = 0, n = nums1.count, m = nums2.count
        
        while i < n, j < m {
            if nums1[i] == nums2[j] {
                return nums1[i]
            } else if nums1[i] < nums2[j] {
                i += 1
            } else {
                j += 1
            }
        }
        
        return -1
    }
}
