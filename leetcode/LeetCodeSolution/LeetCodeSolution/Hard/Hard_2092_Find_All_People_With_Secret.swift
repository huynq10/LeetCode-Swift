//
//  Hard_2092_Find_All_People_With_Secret.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 24/02/2024.
//

import Foundation

class Hard_2092_Find_All_People_With_Secret {
    func findAllPeople(_ n: Int, _ meetings: [[Int]], _ firstPerson: Int) -> [Int] {
        var sharingTimes = Array(repeating: Int.max, count: n)
        sharingTimes[0] = 0
        sharingTimes[firstPerson] = 0
        
        var schedule = Array(repeating: [(person: Int, time: Int)](), count: n)
        for meeting in meetings {
            schedule[meeting[0]].append((meeting[1], meeting[2]))
            schedule[meeting[1]].append((meeting[0], meeting[2]))
        }
        
        var knownSecretPeople = [0, firstPerson]
        while let person = knownSecretPeople.popLast() {
            for meeting in schedule[person] {
                if meeting.time >= sharingTimes[person] &&
                    meeting.time < sharingTimes[meeting.person] {
                    sharingTimes[meeting.person] = meeting.time
                    knownSecretPeople.append(meeting.person)
                }
            }
        }
        
        let result = sharingTimes
            .enumerated()
            .filter { $0.element != .max }
            .map(\.offset)
        
        return result
    }
}
