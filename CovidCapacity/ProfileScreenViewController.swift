//
//  ProfileScreenViewController.swift
//  CovidCapacity
//
//  Created by Emma Yuan on 11/30/20.
//  Copyright © 2020 CovidCapacity. All rights reserved.
//

import UIKit

class ProfileScreenViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var addressLine: UITextField!
    @IBOutlet weak var aptNum: UITextField!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var state: UITextField!
    @IBOutlet weak var zipCode: UITextField!
    @IBOutlet weak var maxCapacity: UITextField!
    @IBOutlet weak var edit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        edit.layer.borderWidth = 1.0
        edit.layer.borderColor = UIColor(red: 0, green: 0.478431, blue: 1, alpha: 1).cgColor
        edit.layer.borderWidth = 1.0
        edit.layer.borderColor = UIColor(red: 0, green: 0.478431, blue: 1, alpha: 1).cgColor
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
