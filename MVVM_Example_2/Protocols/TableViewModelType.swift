//
//  TableViewModelType.swift
//  MVVM_Example_2
//
//  Created by test on 10.07.2022.
//

import Foundation

protocol TableViewModelType{
    var numberOfRows: Int {get}
    var profiles: [Profile] {get}
}
