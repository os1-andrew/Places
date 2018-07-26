//
//  PlacesPresenter.swift
//  Places
//
//  Created by Andrew Dhan on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import Foundation

//This means that if an object is a PlacesPresenter it will have a placeController that we can set and get
//Protocol for types that display, manipulate or create Place objects using a PlaceController (written by Instr)
protocol PlacesPresenter: class {
    var placeController: PlaceController? {get set} //get, set means that this property can be get or set
}
