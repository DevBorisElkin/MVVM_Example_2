//
//  TableViewCellViewModel.swift
//  MVVM_Example_2
//
//  Created by test on 10.07.2022.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType{
    private var profile: Profile
    
    var fullName: String {
        get {
            return "\(profile.name) \(profile.secondName)"
        }
    }
    
    var age: String{
        return "\(profile.age)"
    }
    
    
    
    init(profile: Profile){
        self.profile = profile
    }
}
