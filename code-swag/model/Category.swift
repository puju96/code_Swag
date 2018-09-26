//
//  Category.swift
//  code-swag
//
//  Created by Admin on 04/07/1940 Saka.
//  Copyright © 1940 Admin. All rights reserved.
//

import Foundation
struct Category{
    private(set) public var imageName :String
    private(set) public var title :String
    
    init(ImageName :String , Title :String){
        self.imageName = ImageName
        self.title = Title
    }
}
