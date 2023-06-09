//
//  ViewController.swift
//  APP02
//
//  Created by Wei Huang on 2023/3/28.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var NavBtn_firSC: UIBarButtonItem!
    @IBOutlet weak var NavBar_SC1: UINavigationItem!
    @IBOutlet weak var SeguementCtrl1: UISegmentedControl!
    @IBOutlet weak var Lab01: UILabel!
    @IBOutlet weak var Lab02: UILabel!
    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var Slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 編輯Segment Controll 按鈕
        SeguementCtrl1.setTitle("莉莎", forSegmentAt: 0)
        SeguementCtrl1.setTitle("霸子", forSegmentAt: 1)
        SeguementCtrl1.setTitle("荷馬", forSegmentAt: 2)
        SeguementCtrl1.setTitle("美枝", forSegmentAt: 3)
        SeguementCtrl1.setTitle("梅姬", forSegmentAt: 4)
        
    }
    
    // SegM Ctrl 更改值 觸發事件（切換人物）
    @IBAction func SegmCtrlValueChange(_ sender: UISegmentedControl) {
        let Index = SeguementCtrl1.selectedSegmentIndex
        
        if Index == 0{
            Image.image = UIImage(named: "Sim1")
        }else if Index == 1{
            Image.image = UIImage(named: "Sim2")
        }else if Index == 2{
            Image.image = UIImage(named: "Sim3")
        }else if Index == 3{
            Image.image = UIImage(named: "Sim4")
        }else if Index == 4{
            Image.image = UIImage(named: "Sim5")
        }
        
        
        
    }
    
    // Slider 滑動 值更動觸發事件 （變更ImageView Width）
    @IBAction func ValueChange(_ sender: UISlider) {
        Image.frame.size.width = CGFloat(sender.value)
        self.Lab01.text = "滑桿位置：\(sender.value)"
        
        // 倍率-修改顯示小數位
        let i = sender.value/100
        let mag = String(format: "%.2f", i)
        self.Lab02.text = "倍率： Ｘ\(mag)"
    }
    
    
   
    
    
    
    }
    
    

