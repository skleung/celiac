//
//  SignupViewController.swift
//  celiac
//
//  Created by Sherman Leung on 2/2/16.
//  Copyright © 2016 Sherman Leung. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    @IBAction func cancel(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func signup(sender: UIBarButtonItem) {
        let newUser = PFUser()
        newUser.username = usernameField.text!
        newUser.password = passwordField.text!
//        newUser["age"] = ageField.text!
        newUser.signUpInBackgroundWithBlock { (success, err) -> Void in
            if (err == nil) {
                self.dismissViewControllerAnimated(true, completion: nil)
            } else {
                let alert = UIAlertController(title: "Signup Failed", message: nil, preferredStyle: .Alert)
                self.presentViewController(alert, animated: true, completion: nil)
            }
        }
    }
    
}
