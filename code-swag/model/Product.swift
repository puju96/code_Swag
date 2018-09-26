//
//  Product.swift
//  code-swag
//
//  Created by Admin on 04/07/1940 Saka.
//  Copyright © 1940 Admin. All rights reserved.
//

import Foundation
struct Product {
    private(set) public var title :String
    private(set) public var price :String
    private(set) public var imageNmae  :String
    
    init(Title : String, Price :String, ImageName :String) {
        self.title = Title
        self.price = Price
        self.imageNmae = ImageName
        
    }
}
