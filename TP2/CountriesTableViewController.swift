//
//  CountriesTableViewController.swift
//  TP2
//
//  Created by esatic formation on 07/01/1400 AP.
//  Copyright © 1400 esatic formation. All rights reserved.
//

import UIKit

class CountriesTableViewController: UITableViewController {
    
    let CountryBycont = Dictionary(grouping: countries) { (country) -> String in
        return country.cont}
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {

        return CountryBycont.count
    }
    
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return countries.count
        
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)
        
       
        
            let country = countries[indexPath.row]

       
         cell.textLabel?.text = country.iso_Code
        cell.detailTextLabel?.text = country.name
        cell.imageView?.image = UIImage(named: country.iso_Code)
        return cell
    }
        override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int)-> String? {
        if section == 0
        {return "Afrique"}
        else if section == 1
        {return "Europe"}
        else if section == 2
        {return "Asie"}
        else if section == 3
        {return "Amerique"}
        else
        {return "Océanie"}
    }

}
