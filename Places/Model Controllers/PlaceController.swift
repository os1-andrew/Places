//
//  PlaceController.swift
//  Places
//
//  Created by Andrew Dhan on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import Foundation

class PlaceController {
    
    func createPlace(withName name: String, latitude: Double, longitude: Double){
        places.append(Place(name: name, latitude: latitude, longitude: longitude))
    }
    
    private(set) var places = [Place]()
    
}
