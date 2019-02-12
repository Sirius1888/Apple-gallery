//
//  DetailViewController.swift
//  Apple gallery
//
//  Created by sirius on 12.02.2019.
//  Copyright © 2019 sirius. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageViewPhoto: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var textViewInfo: UITextView!
    
    var product: Product!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if (product != nil) {
            self.imageViewPhoto.image = product.getImage()
            self.labelTitle.text = product.name
            self.textViewInfo.text = product.info
        }
    }
    
    
    
    
}
