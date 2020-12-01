//
//  ViewController.swift
//  CovidCapacity
//
//  Created by Justin on 11/30/20.
//  Copyright © 2020 CovidCapacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signInButton: UIButton!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signInButton.layer.borderWidth = 1.0
        signInButton.layer.borderColor = UIColor(red: 0, green: 0.478431, blue: 1, alpha: 1).cgColor
        signUpButton.layer.borderWidth = 1.0
        signUpButton.layer.borderColor = UIColor(red: 0, green: 0.478431, blue: 1, alpha: 1).cgColor
    }


}

