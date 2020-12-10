//
//  ProfileScreenViewController.swift
//  CovidCapacity
//
//  Created by Emma Yuan on 11/30/20.
//  Copyright © 2020 CovidCapacity. All rights reserved.
//

import UIKit
import CoreLocation

class ProfileScreenViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var addressLineField: UITextField!
    @IBOutlet weak var aptNumField: UITextField!
    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var stateField: UITextField!
    @IBOutlet weak var zipCodeField: UITextField!
    @IBOutlet weak var maxCapacityField: UITextField!
    @IBOutlet weak var editButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editButton.layer.borderWidth = 1.0
        editButton.layer.borderColor = UIColor(red: 0, green: 0.478431, blue: 1, alpha: 1).cgColor
        editButton.layer.borderWidth = 1.0
        editButton.layer.borderColor = UIColor(red: 0, green: 0.478431, blue: 1, alpha: 1).cgColor
                
        let addressLine = addressLineField.text!
        let city = cityField.text!
        let state = stateField.text!
        let zipCode = zipCodeField.text!
        let address = addressLine + ", " + city + ", " + state + " " + zipCode
        // print(address)
        
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(address) {
            placemarks, error in
            let placemark = placemarks?.first
            let lat = placemark?.location?.coordinate.latitude
            let lon = placemark?.location?.coordinate.longitude
            print("Lat: \(lat), Lon: \(lon)")
        }
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
