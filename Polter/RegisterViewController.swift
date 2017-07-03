//
//  RegisterViewController.swift
//  Polter
//
//  Created by christyan on 1/07/17.
//  Copyright © 2017 christyan. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var repasswordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func cancelButtonAction(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func doneButtonAction(_ sender: Any) {
        
        let user = userTextField.text
        let email = emailTextField.text
        let password = passwordTextField.text
        let repassword = repasswordTextField.text
        
        if((user?.isEmpty)! || (email?.isEmpty)! || (password?.isEmpty)! || (repassword?.isEmpty)!)
        {
            displayAlertMessage(userMessage: "All fields are required")
            return
        }
        if(password != repassword)
        {
            displayAlertMessage(userMessage: "Passwords do not match")
            return
        }        
        
        let myAlert = UIAlertController(title:"Alert", message: "Registration is succesfull", preferredStyle: UIAlertControllerStyle.alert);
        let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.default){ action in
            self.dismiss(animated: true,completion: nil)
        }
        myAlert.addAction(okAction);
        self.present(myAlert,animated: true,completion: nil)
    }
    
    func displayAlertMessage(userMessage: String){
        
        let myAlert = UIAlertController(title:"Alert", message:userMessage, preferredStyle: UIAlertControllerStyle.alert);
        let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.default, handler:nil);
        myAlert.addAction(okAction);
        self.present(myAlert, animated:true, completion:nil);
    }
}
