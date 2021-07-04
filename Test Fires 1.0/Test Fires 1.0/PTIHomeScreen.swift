//
//  PTIHomeScreen.swift
//  Test Fires 1.0
//
//  Created by Jason M Davis on 6/8/21.
//

import UIKit


struct Item {
    var isoCode: String
    var name: String
}

class PTIHomeScreen: UITableViewController {
   
    
    let items = [
    Item(isoCode: "PTI.Oil1", name: "Motor Oil"),
    Item(isoCode: "PTI.FuelFilter1", name: "Fuel Filter"),
    Item(isoCode: "PTI.Tire2", name: "Tire Pressure"),
    Item(isoCode: "PTI.PSFluid1", name: "Power Steering Fluid"),
    Item(isoCode: "PTI.Coolant1", name: "Coolant"),
    Item(isoCode: "PTI.Suspension1", name: "Suspension"),
    Item(isoCode: "PTI.GHService", name: "Glad Hand"),
    // Item(isoCode: "PTI.FireExtin1", name: "Fire Extinguisher"),
    Item(isoCode: "PTI.BrakeChamber1", name: "Brake Chambers"),
    Item(isoCode: "PTI.Tire9", name: "Tires"),
    Item(isoCode: "PTI.JumpStuds1", name: "Jump Studs"),
    //  Item(isoCode: "PTI.Belts1", name: "Belts"),
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
        cell.imageView?.image = UIImage(named: item.isoCode)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "PTIItem"
    }

    
    
    
    
    
    
    
    
    
    
    
    
}
    
    
    
    
    
    
    
    
    

