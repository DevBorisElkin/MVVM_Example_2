//
//  DetailViewModel.swift
//  MVVM_Example_2
//
//  Created by test on 10.07.2022.
//

import Foundation

class DetailViewModel : DetailViewModelType{
    
    private var profile: Profile
    
    var description: String{
        return "\(profile.name) \(profile.secondName) is \(profile.age) years old"
    }
    
    init(profile: Profile){
        self.profile = profile
    }
    
}
