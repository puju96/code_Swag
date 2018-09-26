//
//  ViewController.swift
//  code-swag
//
//  Created by Admin on 03/07/1940 Saka.
//  Copyright © 1940 Admin. All rights reserved.
//

import UIKit

class categoriesVC: UIViewController,UITableViewDataSource,UITableViewDelegate
{
    
    
    @IBOutlet weak var categoryTable :UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
       categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell") as? CategoryCell{
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.UpdateCellView(category: category)
            return cell
        }
        else{
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductVC{
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            
            assert(sender as? Category != nil)
            productVC.initProduct(category:  sender as! Category)
    }
    }

}
