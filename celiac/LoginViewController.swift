//
//  LoginViewController.swift
//  celiac
//
//  Created by Sherman Leung on 2/2/16.
//  Copyright © 2016 Sherman Leung. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    @IBAction func login(sender: UIButton) {
        PFUser.logInWithUsernameInBackground(usernameField.text!, password: passwordField.text!) { (user, err) -> Void in
            if (err == nil) {
                self.performSegueWithIdentifier("login_segue", sender: nil)
            } else {
                let alert = UIAlertController(title: "Invalid Login", message: nil, preferredStyle: .Alert)
                self.presentViewController(alert, animated: true, completion: nil)
            }
        }
    }
}
