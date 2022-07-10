//
//  TableViewController.swift
//  MVVM_Example_2
//
//  Created by test on 10.07.2022.
//

import UIKit

class TableViewController: UITableViewController {

    var viewModel: TableViewViewModelType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        guard let viewModel = viewModel else {return 0}
//        return viewModel.numberOfRows
        return viewModel?.numberOfRows() ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        
        guard let cell = cell, let viewModel = viewModel else {return TableViewCell()}
        let cellViewModel = viewModel.cellViewModel(forIndexPath: indexPath)
        
        cell.viewModel = cellViewModel

        return cell
    }
}
