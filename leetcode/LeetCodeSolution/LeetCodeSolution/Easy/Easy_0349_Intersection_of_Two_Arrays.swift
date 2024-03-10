//
//  Easy_0349_Intersection_of_Two_Arrays.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 10/03/2024.
//

import Foundation

class Easy_0349_Intersection_of_Two_Arrays {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        return Array(Set(nums1).intersection(Set(nums2)))
    }
}
