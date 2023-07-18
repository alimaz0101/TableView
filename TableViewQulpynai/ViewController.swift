//
//  ViewController.swift
//  TableViewQulpynai
//
//  Created by Alima Zhaksylyk on 18.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemPrice: UILabel!
    @IBOutlet weak var itemDetail: UILabel!
    
    var name = ""
    var price = ""
    var detail = ""
    var imageName = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemName.text = name
        itemPrice.text = price
        itemDetail.text = detail
        itemImage.image = UIImage(named: imageName)
    }


}

