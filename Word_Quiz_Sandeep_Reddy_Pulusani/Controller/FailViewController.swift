//
//  FailViewController.swift
//  Word_Quiz_Sandeep_Reddy_Pulusani
//
//  Created by Sandeep Reddy Pulusani on 2020-04-15.
//  Copyright © 2020 Sandeep Reddy Pulusani. All rights reserved.
//

import UIKit

class FailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onclick(_ sender: Any) {
        
         performSegue(withIdentifier: "home", sender: self)
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
