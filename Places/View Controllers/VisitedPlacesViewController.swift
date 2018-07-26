//
//  VisitedPlacesViewController.swift
//  Places
//
//  Created by Andrew Dhan on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class VisitedPlacesViewController: UIViewController, PlacesPresenter, PlacesTableViewControllerDelegate {


    // MARK - PlacesTableViewControllerDelegate
    func placeWasSelected(place: Place) {
        mapViewController.location = place.location
    }
    // MARK: - Navigation

    //We are using an embed segue which is still a segue! Gives us a chance to get properties from orginal VC and use
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //sets VC depending on where we are going, i.e. which segue is used
        if let tableVC = segue.destination as? PlacesTableViewController{
            placesTableViewController = tableVC
            placesTableViewController.placeController = placeController //passes down to its child
            placesTableViewController.delegate = self
        }
        
        if let mapVC = segue.destination as? MapViewController {
            mapViewController = mapVC
        }
    }
    
    var placeController: PlaceController?
    var mapViewController: MapViewController! //They are optional but we don't have to unrwap to use. However, if value is nil then the app will crash. This is on purpose since it means that the crash apped becasue something went wrong
    var placesTableViewController: PlacesTableViewController!
 

}
