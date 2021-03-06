//
//  ProductCell.swift
//  code-swag
//
//  Created by Admin on 04/07/1940 Saka.
//  Copyright © 1940 Admin. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage :UIImageView!
    @IBOutlet weak var productName : UILabel!
    @IBOutlet weak var productPrice :UILabel!
    
    func updateCollectionView(product :Product){
        productImage.image = UIImage(named: product.imageNmae)
        productName.text = product.title
        productPrice.text = product.price
    }
    
}
