//
//  PTIHomeScreen.swift
//  Test Fires 1.0
//
//  Created by Jason M Davis on 7/4/21.
//

import UIKit


struct Item {
    var name: String
}

class PTIHomeScreen: UITableViewController {
   
    
    let items = [
    Item(name: "Motor Oil"),
    Item(name: "Fuel Filter"),
    Item(name: "Tire Pressure"),
    Item(name: "Power Steering Fluid"),
    Item(name: "Coolant"),
    Item(name: "Suspension"),
    Item(name: "Glad Hand"),
    Item(name: "5th Wheel"),
    Item(name: "Brake Chambers"),
    Item(name: "Tires"),
    Item(name: "Jump Studs"),
    Item(name: "Belts"),
    // Item(isoCode: <#T##String#>, name: <#T##String#>)
    // Item(isoCode: <#T##String#>, name: <#T##String#>)
    // Item(isoCode: <#T##String#>, name: <#T##String#>)

    
    
    ]
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PTItem", for: indexPath)

        let item = items[indexPath.row]
        cell.textLabel?.text = item.name
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "PTIItem"
    }

    
    
    
    
    
    
    
    
    
    
    
    
}
    
    
    
    
    
    
    
    
    
