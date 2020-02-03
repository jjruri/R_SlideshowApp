//
//  ViewController.swift
//  R_SlideshowApp
//
//  Created by 佐藤るり on 2020/02/01.
//  Copyright © 2020 junya.satou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var img1 = UIImage(named:"haru1") //★画像はどこに格納するのがいいの？Assertフォルダにしているページもある
    var img2 = UIImage(named:"haru2")
    var img3 = UIImage(named:"haru3")
    var img4 = UIImage(named:"haru4")
    
    //一定の間隔で処理を行うためのタイマー
    var timer = Timer()

    @IBOutlet weak var imageview1: UIImageView!
    @IBAction func back(_ sender: Any) {
    }
    @IBAction func play(_ sender: Any) {
        imageview1.image = img4
    }
    @IBAction func go(_ sender: Any) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

