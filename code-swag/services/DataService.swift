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
    private let shirtList = [
    Product(Title: "Xlbyte white shirt", Price: "Rs. 1200", ImageName: "shirt01.png"),
    Product(Title: "Xlbyte logo shirt", Price: "Rs. 1100", ImageName: "shirt02.png"),
     Product(Title: "Xlbyte logo shirt", Price: "Rs. 1100", ImageName: "shirt03.png"),
     Product(Title: "Xlbyte logo shirt", Price: "Rs. 1100", ImageName: "shirt04.png")
    ]
    private let hoodiesList = [
        Product(Title: "Xlbyte white shirt", Price: "Rs. 1200", ImageName: "hoodie01.png"),
        Product(Title: "Xlbyte logo shirt", Price: "Rs. 1100", ImageName: "hoodie02.png"),
        Product(Title: "Xlbyte logo shirt", Price: "Rs. 900", ImageName: "hoodie03.png"),
        Product(Title: "Xlbyte logo shirt", Price: "Rs. 1800", ImageName: "hoodie04.png")       ]
    
    private let hatsList = [
        Product(Title: "Xlbyte white shirt", Price: "Rs. 1200", ImageName: "hat01.png"),
          Product(Title: "Xlbyte white shirt", Price: "Rs. 1210", ImageName: "hat02.png"),
            Product(Title: "Xlbyte white shirt", Price: "Rs. 1100", ImageName: "hat03.png"),
              Product(Title: "Xlbyte white shirt", Price: "Rs. 500", ImageName: "hat04.png")
        ]
    

private let digitalList = [Product]()

    func getProducts(forProductTitle title :String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getshirts()
        case "HATS":
            return gethats()
        case "HOODIES":
            return gethoodies()
        case "DIGITAL":
            return getdigital()
        default:
            return getshirts()
        }
    }
    
    func getshirts() -> [Product]{
        return shirtList
    }
    
    func gethats() -> [Product]{
        return hatsList
    }
    
    func gethoodies() -> [Product]{
        return hoodiesList
    }
    
    func getdigital() -> [Product]{
        return digitalList
    }
    
}
