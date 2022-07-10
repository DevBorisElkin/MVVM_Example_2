//
//  DetailViewController.swift
//  MVVM_Example_2
//
//  Created by test on 10.07.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var viewModel : DetailViewModelType?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        
        textLabel.text = viewModel.description
    }
}
