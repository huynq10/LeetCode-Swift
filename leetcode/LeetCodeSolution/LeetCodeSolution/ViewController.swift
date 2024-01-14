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
        let solution = Medium_1657_Determine_if_Two_Strings_Are_Close()
        let word1 = "uau"
        let word2 = "ssx"
        let result = solution.closeStrings(word1, word2)
        print(result)
    }


}

