//
//  LoginViewController.swift
//  Polter
//
//  Created by christyan on 22/06/17.
//  Copyright © 2017 christyan. All rights reserved.
//

import Foundation
import Alamofire
		
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
        let username = usernameTextField.text
        let userPassword = passwordTextField.text
        let root = "http://startup-rocket-kperezm.c9users.io/api/v1/"
        let uri = "auth/sign_in"
        let url = "\(root)\(uri)"
        
        if(username!.isEmpty || userPassword!.isEmpty)
        {
            displayAlertMessage(userMessage: "All fields are required")
            return
        }
        let requestParams = ["email": username,
                             "password": userPassword]
        
        Alamofire.request(url, method: .post, parameters: requestParams, encoding: JSONEncoding.default, headers: [:])
            .responseJSON { response in
                debugPrint(response)
                self.dismiss(animated: true, completion: nil)
        }
    }
    
    func displayAlertMessage(userMessage: String){
        
        let myAlert = UIAlertController(title:"Alert", message:userMessage, preferredStyle: UIAlertControllerStyle.alert);
        
        let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.default, handler:nil);
        
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated:true, completion:nil);
    }
}
