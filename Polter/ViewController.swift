//
//  ViewController.swift
//  Polter
//
//  Created by christyan on 8/06/17.
//  Copyright © 2017 christyan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonTouchUpInside(_ sender: AnyObject) {
        let userName = userTextField.text
        let userPassword = passwordTextField.text
        
        if(userName!.isEmpty || userPassword!.isEmpty)
        {
            displayAlertMessage(userMessage: "All fields are required")
            return
        }
    }
    func displayAlertMessage(userMessage: String){
        
        let myAlert = UIAlertController(title:"Alert", message:userMessage, preferredStyle: UIAlertControllerStyle.alert);
        
        let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.default, handler:nil);
        
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated:true, completion:nil);
    }
}

