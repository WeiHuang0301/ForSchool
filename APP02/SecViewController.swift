//
//  SecViewController.swift
//  APP02
//
//  Created by Wei Huang on 2023/3/29.
//

import UIKit

class SecViewController:UIViewController{
    
  
    @IBOutlet weak var Lb1_secVC: UILabel!
    @IBOutlet weak var Lb2_secVC: UILabel!
    @IBOutlet weak var Lb4_secVC: UILabel!
    @IBOutlet weak var ActIndicator: UIActivityIndicatorView!
    @IBOutlet weak var Sw1: UISwitch!
    @IBOutlet weak var Sw2: UISwitch!
    @IBOutlet weak var Sw3_secVC: UISwitch!
    @IBOutlet weak var NavBar_secondSC: UINavigationItem!
    @IBOutlet weak var NavBtn_secSC: UIBarButtonItem!
    @IBOutlet weak var imageView_secSC: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // imageView: Load the images
        // var an Array.
        var Images = [UIImage]()
        
        // The Msg for hide the imageView
        self.Lb2_secVC.isHidden = true
        self.Lb4_secVC.isHidden = true
        
        // Image load in
        for i in 1...5{
            Images.append(UIImage(named: "Sim\(i)")!)
        }
        
        // imageView animation setting
        imageView_secSC.animationImages = Images
        imageView_secSC.animationDuration = 10.0
        imageView_secSC.startAnimating()
        
    }
    
    // NavBar 左側按鍵觸發事件：dismiss收折第二螢幕（重現第一螢幕）
    @IBAction func NavBtnTapped_secSC(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true)
    }
    
    // 相簿播映Switch 觸發事件
    @IBAction func ValueChange_Sw1(_ sender: UISwitch) {
        
        if Sw1.isOn == true{
            ActIndicator.isHidden = false
            ActIndicator.hidesWhenStopped = false
            ActIndicator.startAnimating()
        } else{
            ActIndicator.isHidden = true
        }
    }
    
    
    // 說笑話Switch 觸發事件
    @IBAction func ValueChange_Sw2(_ sender: UISwitch) {
        
        if Sw2.isOn == false{
            Lb2_secVC.isHidden = true
        } else{
            Lb2_secVC.isHidden = false
        }
        
    }
    
    // 思考人生Switch 觸發事件
    @IBAction func ValueChange_Sw3(_ sender: UISwitch) {
        
        if Sw3_secVC.isOn == true{
            imageView_secSC.startAnimating()
            Lb4_secVC.isHidden = true
        } else{
            imageView_secSC.stopAnimating()
            Lb4_secVC.isHidden = false
        }
        
    }
    
        
    
}
