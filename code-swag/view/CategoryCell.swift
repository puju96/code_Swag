//
//  CategoryCell.swift
//  code-swag
//
//  Created by Admin on 04/07/1940 Saka.
//  Copyright © 1940 Admin. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    @IBOutlet weak var Categoryimage :UIImageView!
    @IBOutlet weak var Categorytitle :UILabel!
    
    func UpdateCellView (category : Category){
        Categoryimage.image = UIImage(named: category.imageName)
        Categorytitle.text = category.title
    }
  

}

