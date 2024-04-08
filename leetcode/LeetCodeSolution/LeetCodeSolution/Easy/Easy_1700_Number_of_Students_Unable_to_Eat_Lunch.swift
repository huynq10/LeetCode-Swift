//
//  Easy_1700_Number_of_Students_Unable_to_Eat_Lunch.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 8/4/24.
//

import Foundation

class Easy_1700_Number_of_Students_Unable_to_Eat_Lunch {
    func countStudents(_ students: [Int], _ sandwiches: [Int]) -> Int {
        var zeroCount = 0, oneCount = 0
        students.forEach { $0 == 0 ? (zeroCount+=1) : (oneCount+=1) }
        
        var students = students
        var sandwiches = sandwiches
        while (zeroCount > 0 && oneCount > 0) || (sandwiches.first == students.first) {
            if students.count == 0 {
                return 0
            }
            
            let topStudents = students.first!
            if topStudents == sandwiches.first {
                students.removeFirst()
                sandwiches.removeFirst()
                topStudents == 0 ? (zeroCount-=1) : (oneCount-=1)
            } else {
                students.removeFirst()
                students.append(topStudents)
            }
        }
        
        if sandwiches.first == students.first {
            return 0
        } else {
            return max(zeroCount, oneCount)
        }
    }
}
