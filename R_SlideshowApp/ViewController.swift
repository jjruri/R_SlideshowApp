//
//  ViewController.swift
//  R_SlideshowApp
//
//  Created by 佐藤るり on 2020/02/01.
//  Copyright © 2020 junya.satou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //タイマー
    var timer : Timer!
    
    //var img1 = UIImage(named:"haru1") //★画像はどこに格納するのがいいの？Assertフォルダにしているページもある
    //var img2 = UIImage(named:"haru2")
    //var img3 = UIImage(named:"haru3")
    //var img4 = UIImage(named:"haru4")
    
    @IBOutlet weak var imageview1: UIImageView!
    @IBOutlet weak var back_outlet: UIButton!
    @IBOutlet weak var go_outlet: UIButton!
    @IBOutlet weak var stop_outlet: UIButton!
    @IBOutlet weak var play_outlet: UIButton!
    
    // 表示している画像の番号
    var dispImageNo = 0
    
    // 表示している画像の番号を元に画像を表示する
    func displayImage() {
        //画像の名前の配列
        let imageNameArray = [
            "haru4",
            "haru3",
            "haru2"
        ]
        
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
   
        stop_outlet.isHidden = true
        
        }

        // selector: #selector(slideshowtimer(_:)) で指定された関数
        @objc func slideshowTimer(_ timer: Timer) {
            // 表示している画像の番号を１増やす
            dispImageNo += 1
            // 表示している画像の番号を元に画像を表示する
            displayImage()
        }


    @IBAction func back(_ sender: Any) {
        

    }
    
    @IBAction func play(_ sender: Any) {
        
        let image = UIImage(named:"haru4")
        imageview1.image = image

        // タイマーの作成、始動
        if self.timer == nil{
            Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(slideshowTimer(_:)), userInfo: nil, repeats: true)
        
            // 戻る・進むボタンを無効に
            back_outlet.isEnabled = false
            go_outlet.isEnabled = false
        
            // タイマー再生したら再生ボタンを非表示・停止ボタンを表示
            go_outlet.setTitle("停止", for: .normal)
            //play_outlet.isHidden = true
            //stop_outlet.isHidden = false
        }
        
        else if self.timer != nil {
        // タイマーを停止
            self.timer.invalidate()
            
            // タイマーをリセット
            self.timer = nil
        
            // 戻る・進むボタンを有効に
            back_outlet.isEnabled = true
            go_outlet.isEnabled = true
        
            // 停止したら再生ボタンを表示・停止ボタンを非表示
            go_outlet.setTitle("再生", for: .normal)
            //play_outlet.isHidden = false
            //stop_outlet.isHidden = true
        }
        
        
    }
    
    //@IBAction func stop(_ sender: Any) {
        //if self.timer != nil {
        //}
        
    }
    
    
    @IBAction func go(_ sender: Any) {
        
    }
        

    }


