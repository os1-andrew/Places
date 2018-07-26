//
//  PlacesTableViewController.swift
//  Places
//
//  Created by Andrew Dhan on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

//Used to communicate that a row was selected in the table view
protocol PlacesTableViewControllerDelegate: class{
    func placeWasSelected(place:Place)
}

class PlacesTableViewController: UITableViewController, PlacesPresenter {

    //calls right before VC appear on screen
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    //check to see if row was selected and passes it on to delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let place = placeController?.places[indexPath.row] else { return } //optional chaining used
        
        delegate?.placeWasSelected(place: place) //hey place was set do what you wish with it
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return placeController?.places.count  ?? 0 //nil coalescing "means if not nil do whatever it says, if it is nil set to 0"
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceCell", for: indexPath)

        let place = placeController?.places[indexPath.row]
        cell.textLabel?.text = place?.name
        
        return cell
    }
    
    var placeController: PlaceController?
    weak var delegate: PlacesTableViewControllerDelegate?
}
