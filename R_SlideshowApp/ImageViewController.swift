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
    var imageNameArray2 = [""]
    
    
    // 画像インスタンス用
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let name = imageNameArray2[dispImageNo_big]
        //print("name:\(name)")
        let image2 = UIImage(named: name)
        
        /*
 if dispImageNo_big == 0 {
            image2 = UIImage(named: name)!
        }
 */
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
