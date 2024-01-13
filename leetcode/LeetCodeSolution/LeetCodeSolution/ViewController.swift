//
//  ViewController.swift
//  LeetCodeSolution
//
//  Created by LAP14556 on 02/01/2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let solution = Medium_1347_Minimum_Number_of_Steps_to_Make_Two_Strings_Anagram()
        let s = "anagram"
        let t = "mangaar"
        let result = solution.minSteps(s, t)
        print(result)
    }


}

