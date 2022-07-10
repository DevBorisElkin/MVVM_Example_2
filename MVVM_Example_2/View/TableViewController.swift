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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let viewModel = viewModel else { return }
        
        viewModel.selectRow(atIndexPath: indexPath)
        
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "detailSegue" else{
            return
        }
        
        var detailViewController = segue.destination as! DetailViewController
        
        var detailViewModel: DetailViewModelType? = viewModel?.viewModelForSelectedRow() ?? nil
        
//        guard let detailViewModel = detailViewModel else {
//            return
//        }
        detailViewController.viewModel = detailViewModel
    }
}
