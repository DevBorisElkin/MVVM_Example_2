//
//  TableViewModelType.swift
//  MVVM_Example_2
//
//  Created by test on 10.07.2022.
//

import Foundation

protocol TableViewViewModelType{
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?
}
