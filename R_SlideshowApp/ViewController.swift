//
//  ViewController.swift
//  R_SlideshowApp
//
//  Created by 佐藤るり on 2020/02/01.
//  Copyright © 2020 junya.satou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //var img1 = UIImage(named:"haru1") //★画像はどこに格納するのがいいの？Assertフォルダにしているページもある
    //var img2 = UIImage(named:"haru2")
    //var img3 = UIImage(named:"haru3")
    //var img4 = UIImage(named:"haru4")
    
    @IBOutlet weak var imageview1: UIImageView!
    @IBAction func back(_ sender: Any) {
    }
    @IBAction func play(_ sender: Any) {
    }
    @IBAction func go(_ sender: Any) {
        
    }
    
    // 表示している画像の番号
    var dispImageNo = 0
    
    // 表示している画像の番号を元に画像を表示する
    func displayImage() {
        //画像の名前の配列
        let imageNameArray = [
            "haru2",
            "haru3",
            "haru4"
        ]
        
        // 範囲より下を指している場合、最後の画像を表示
        if dispImageNo < 0 {
            dispImageNo = 2
        }
        
        // 範囲より上を指している場合、最初の画像を表示
        if dispImageNo > 2 {
            dispImageNo = 0
        }
        
        // 表示している画像の番号から名前を取り出し
        let name = imageNameArray[dispImageNo]
        
        // 画像を読み込み
        let image = UIImage(named: name)
        
        // Image Viewに読み込んだ画像をセット
        imageview1.image = image
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    

        // タイマーの作成、始動
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(slideshowTimer(_:)), userInfo: nil, repeats: true)
        }

        // selector: #selector(slideshowtimer(_:)) で指定された関数
        @objc func slideshowTimer(_ timer: Timer) {
            // 関数が呼ばれていることを確認
            print("Timer")
        }
        

    }


