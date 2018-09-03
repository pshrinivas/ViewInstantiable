//
//  StoryBoardable.swift
//  Created by Shrinivas Prabhu
//

import Foundation

protocol StoryBoardable : ViewInstantiable where Self : UIViewController{
    
}

extension StoryBoardable {
    static func instantiate(storyBoardName : String)->Self{
        let storyboard = UIStoryboard(name: storyBoardName, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: identifier) as! Self
    }
}
