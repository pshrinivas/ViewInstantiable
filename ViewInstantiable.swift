//
//  ViewInstantiable.swift
//  Created by Shrinivas Prabhu.
//

import Foundation

protocol ViewInstantiable {
    
}

extension ViewInstantiable{
    static var identifier : String {
        return String(describing: self)
    }
    
}
