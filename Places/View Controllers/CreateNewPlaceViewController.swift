//
//  CreateNewPlaceViewController.swift
//  Places
//
//  Created by Andrew Dhan on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class CreateNewPlaceViewController: UIViewController, PlacesPresenter {

    @IBAction func createNewPlace(_ sender: Any) {
        guard let name = nameTextField.text,
        let latitudeString = latitudeTextField.text,
        let longitudeString = longitudeTextField.text,
        let latitude = Double(latitudeString), //returns nil if Double can't be converted from String
            let longitude = Double(longitudeString) else {return}
        
        
        placeController?.createPlace(withName: name , latitude: latitude, longitude: longitude)
    }
    
    var placeController: PlaceController?
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var latitudeTextField: UITextField!
    @IBOutlet weak var longitudeTextField: UITextField!
}
