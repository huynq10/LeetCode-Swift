//
//  SolutionsTestsHelper.swift
//  LeetCodeSolutionTests
//
//  Created by LAP14556 on 02/01/2024.
//

import XCTest

protocol SolutionsTestCase {
    func problemName() -> String
    func timeOutName() -> String
    func timeOut() -> TimeInterval
    func timeOutSuffix() -> String
    func serialQueue() -> DispatchQueue
}

extension SolutionsTestCase {
    func problemName() -> String {
        return String(describing: type(of: self))
    }
    func timeOut() -> TimeInterval {
        return 10
    }
    func timeOutSuffix() -> String {
        return " Time Out"
    }
    func timeOutName() -> String {
        return problemName() + timeOutSuffix()
    }
    func serialQueue() -> DispatchQueue {
        let queue = DispatchQueue(label: problemName(), qos: .`default`, attributes: [], autoreleaseFrequency: .workItem, target: nil)
        return queue
    }
}

func assertHelper(_ expression: @autoclosure () -> Bool, problemName: String , input: Any, resultValue: Any, expectedValue: Any) {
    XCTAssert(expression(), "\n====================================\nProblem: \(problemName)\n====================================\nInput: \"\(input)\"\n====================================\nExpected: \"\(expectedValue)\"\n====================================\nResult: \"\(resultValue)\"\n====================================\n")
}
