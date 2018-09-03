//
//  Xibable.swift
//  Created by Shrinivas Prabhu.
//

import Foundation

protocol Xibable : ViewInstantiable {
    
}

extension Xibable{
    static var nib : UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
}

extension Xibable where Self : UIView{
    
    static func instantiate()->Self{
        return nib.instantiate(withOwner: nil, options: nil)[0] as! Self
    }
}

extension Xibable where Self : UIViewController{
    static func instantiate()->Self{
        return Self(nibName: identifier, bundle: nil)
    }
}
