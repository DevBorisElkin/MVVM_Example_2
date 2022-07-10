//
//  DetailViewModelType.swift
//  MVVM_Example_2
//
//  Created by test on 10.07.2022.
//

import Foundation

protocol DetailViewModelType{
    var description: String { get }
    var age: Box<String?> { get }
}
