//
//  SecViewController.swift
//  APP02
//
//  Created by Wei Huang on 2023/3/29.
//

import UIKit

class SecViewController:UIViewController{
    
    @IBOutlet weak var NavBar_secondSC: UINavigationItem!
   
    @IBOutlet weak var NavBtn_secSC: UIBarButtonItem!
    
    @IBOutlet weak var imageView_secSC: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var Images = [UIImage]()
        
        for i in 1...5{
            Images.append(UIImage(named: "Sim\(i)")!)
        }
        
        imageView_secSC.animationImages = Images
        imageView_secSC.animationDuration = 10.0
        imageView_secSC.startAnimating()
        
        
    }
    
    
    @IBAction func NavBtnTapped_secSC(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true)
    }
    
}
