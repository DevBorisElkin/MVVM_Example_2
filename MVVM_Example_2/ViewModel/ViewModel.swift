//
//  ViewModel.swift
//  MVVM_Example_2
//
//  Created by test on 10.07.2022.
//

import Foundation

class ViewModel : TableViewViewModelType {
    
    private var selectedIndexPath: IndexPath?
    
    func numberOfRows() -> Int{
        return profiles.count}
    
    var profiles = [
        Profile(name: "Boris", secondName: "Elkin", age: 22),
        Profile(name: "Kate", secondName: "Smith", age: 26),
        Profile(name: "Max", secondName: "Petrov", age: 47)
    ]
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
    
    func viewModelForSelectedRow() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else{
            return nil
        }
        return DetailViewModel(profile: profiles[selectedIndexPath.row])
    }
    
    func selectRow(atIndexPath indexPath: IndexPath) {
        selectedIndexPath = indexPath
    }
}
