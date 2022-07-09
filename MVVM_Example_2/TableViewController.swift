//
//  TableViewController.swift
//  MVVM_Example_2
//
//  Created by test on 10.07.2022.
//

import UIKit

class TableViewController: UITableViewController {

    var profiles: [Profile]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profiles = [
            Profile(name: "Boris", secondName: "Elkin", age: 22),
            Profile(name: "Kate", secondName: "Smith", age: 26),
            Profile(name: "Max", secondName: "Petrov", age: 47)
        ]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return profiles.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        let profile = profiles[indexPath.row]
        cell.fullNameLabel.text = "\(profile.name) \(profile.secondName)"
        cell.ageLabel.text = "\(profile.age)"
        

        return cell
    }
}
