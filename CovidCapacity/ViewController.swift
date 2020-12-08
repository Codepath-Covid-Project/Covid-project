//
//  ViewController.swift
//  CovidCapacity
//
//  Created by Justin on 11/30/20.
//  Copyright © 2020 CovidCapacity. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    @IBOutlet weak var signInButton: UIButton!
    
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var Business: UISwitch!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var wrongInfo: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        signInButton.layer.borderWidth = 1.0
        signInButton.layer.borderColor = UIColor(red: 0, green: 0.478431, blue: 1, alpha: 1).cgColor
        signUpButton.layer.borderWidth = 1.0
        signUpButton.layer.borderColor = UIColor(red: 0, green: 0.478431, blue: 1, alpha: 1).cgColor
    }
    @IBAction func signIn(_ sender: Any) {
        let username = usernameField.text!
        let password = passwordField.text!
        
        PFUser.logInWithUsername(inBackground: username, password: password) {
            (user,error) in
            if user != nil {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            }
            else {
                self.wrongInfo.text = "Incorrect username/password"
            }
        }
    }
    @IBAction func signUp(_ sender: Any) {
        let user = PFUser()
        let isBusiness = Business.isOn
        user["business"] = isBusiness
        user.saveInBackground()
        
        user.username = usernameField.text
        user.password = passwordField.text
        
        user.signUpInBackground{(success,error) in
            if success {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
                print("success")
            }
            else {
                print("Error")
            }
        }
    }
    
    

}

