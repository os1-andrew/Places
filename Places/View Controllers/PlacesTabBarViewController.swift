//
//  PlacesTabBarViewController.swift
//  Places
//
//  Created by Andrew Dhan on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class PlacesTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //childVCs is list of all VCs of child
        for childVC in childViewControllers{
            if let vc = childVC as? PlacesPresenter{  //great place for a protocol because? Otherwise we would need a lot of if statements to make sure its a specific type of VC
                
                vc.placeController = placeController
            }
            
        }
        
    }
    
    
    
    let placeController = PlaceController()
}
