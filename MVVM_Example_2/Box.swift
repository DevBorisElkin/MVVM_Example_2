//
//  Box.swift
//  MVVM_Example_2
//
//  Created by test on 10.07.2022.
//

import Foundation

class Box<T>{
    
    typealias Listener = (T) -> ()
    
    var listener: Listener?
    
    var value: T{
        didSet{
            listener?(value)
        }
    }
    
    func bind(listener: @escaping Listener)
    {
        self.listener = listener
        listener(value)
    }
    
    init(_ value: T){
        self.value = value
    }
}
