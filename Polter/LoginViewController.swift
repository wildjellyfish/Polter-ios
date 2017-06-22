//
//  LoginViewController.swift
//  Polter
//
//  Created by christyan on 22/06/17.
//  Copyright © 2017 christyan. All rights reserved.
//

import Foundation

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func loginButtonTouchUpInside(_ sender: UIButton) {
        let userName = usernameTextField.text
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
