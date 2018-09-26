//
//  DataService.swift
//  code-swag
//
//  Created by Admin on 04/07/1940 Saka.
//  Copyright © 1940 Admin. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categoryList = [
        Category(ImageName: "shirts.png", Title: "SHIRTS"),
        Category(ImageName: "hoodies.png", Title: "HOODIES"),
        Category(ImageName: "hats.png", Title: "HATS"),
        Category(ImageName: "digital.png", Title: "DIGITAL")        ]


func getCategories() -> [Category] {
    return categoryList
    
}
}
