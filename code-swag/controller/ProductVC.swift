//
//  ProductVC.swift
//  code-swag
//
//  Created by Admin on 04/07/1940 Saka.
//  Copyright © 1940 Admin. All rights reserved.
//

import UIKit

class ProductVC: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate

{
    @IBOutlet weak var productCollection : UICollectionView!
    
    private(set) public var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()
    productCollection.dataSource = self
        productCollection.delegate = self

       }
    
    func initProduct(category :Category){
        products = DataService.instance.getProducts(forProductTitle: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as? ProductCell{
            let product =  products[indexPath.row]
            cell.updateCollectionView(product: product)
            return cell
            
            
        }
        
        return ProductCell()
    }
    

   
}
