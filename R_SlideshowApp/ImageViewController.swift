//
//  ImageViewController.swift
//  R_SlideshowApp
//
//  Created by 佐藤るり on 2020/02/10.
//  Copyright © 2020 junya.satou. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var imageview2: UIImageView!
    
    
    // 受け取るためのプロパティ（変数）を宣言しておく
    var dispImageNo_big = 0
    
    // 表示している画像の番号を元に画像を表示する
    func displayImage2() {
        //画像の名前の配列
        let imageNameArray2 = [
            "haru4",
            "haru3",
            "haru2"
        ]
        //表示している画像の番号から名前を取り出し
            let name2 = imageNameArray2[dispImageNo_big]
               
        // 画像を読み込み
            let image2 = UIImage(named: name2)
               
        // Image Viewに読み込んだ画像をセット
        imageview2.image = image2
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageview2.image = image2
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
