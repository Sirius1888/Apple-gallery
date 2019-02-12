//
//  Product.swift
//  Apple gallery
//
//  Created by sirius on 12.02.2019.
//  Copyright © 2019 sirius. All rights reserved.
//

import UIKit

class Product: NSObject {
    
    var name: String!
    var type: String!
    var info: String!
    var imagePath: String!
    
    
    convenience init(name: String, type: String, imagePath: String, info: String) {
        self.init()
        self.name = name
        self.type = type
        self.info = info
        self.imagePath = imagePath
    }
    
    
    func getImage() -> UIImage? {
        return UIImage(named: self.imagePath)
    }

}
