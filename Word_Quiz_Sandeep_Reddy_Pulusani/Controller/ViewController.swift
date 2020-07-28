//
//  ViewController.swift
//  Word_Quiz_Sandeep_Reddy_Pulusani
//
//  Created by Sandeep Reddy Pulusani on 2020-04-15.
//  Copyright © 2020 Sandeep Reddy Pulusani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func Quizpage(_ sender: Any) {
        // Navigation to Quiz Screen
        performSegue(withIdentifier: "Quiz", sender: self)
    }
}

