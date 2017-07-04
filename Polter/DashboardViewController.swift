//
//  DashboardViewController.swift
//  Polter
//
//  Created by christyan on 1/07/17.
//  Copyright © 2017 christyan. All rights reserved.
//

import UIKit

class DashboardViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.performSegue(withIdentifier: "Login", sender: self)
    }
}
