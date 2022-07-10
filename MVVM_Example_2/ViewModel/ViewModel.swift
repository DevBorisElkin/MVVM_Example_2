//
//  ViewModel.swift
//  MVVM_Example_2
//
//  Created by test on 10.07.2022.
//

import Foundation

class ViewModel : TableViewModelType {
    var numberOfRows:Int {return profiles.count}
    
    var profiles = [
        Profile(name: "Boris", secondName: "Elkin", age: 22),
        Profile(name: "Kate", secondName: "Smith", age: 26),
        Profile(name: "Max", secondName: "Petrov", age: 47)
    ]
}
