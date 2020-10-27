//
//  ViewController.swift
//  eggApp
//
//  Created by Takahashi Tomoko on 2020/09/05.
//  Copyright © 2020 takatomo.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        countLabel.text = String(count)
        
        dispImage()
        
        print("あいうえお")
        print("かきこけこ2020.10.22")
      
        
        print("aaaaa")

      
        

    }


    @IBOutlet weak var countLabel: UILabel!
    
    
    @IBOutlet weak var textLabel: UILabel!
    var count :Int = 100
    
    
    
    @IBOutlet var imageView: UIImageView!
    var dispImageNum = 0
    
    func dispImage() {
        let imageArray = ["egg01","egg02","egg03"]
        let name = imageArray[dispImageNum]
        //name = imageArray[0]と同じ意味 今回は0番目
        
        //画像egg01等が入っている
        let image = UIImage(named: name)
        //imageViewにimageを表示
        imageView.image = image
    }
    
    @IBAction func button(_ sender: Any) {
        
        
        count = count - 1
        countLabel.text = String(count)
        
        
//ボタンを押した残り回数によって、if文を使って、textLabelの文章を表示
        //75画像変わらず
        if (count == 75) {
            textLabel.text = "まだまだ!"
        //50画像1に変わる
        } else if (count == 50) {
            textLabel.text = "半分！"
            dispImageNum += 1
        //25画像変わらず
        } else if (count == 25 ) {
            textLabel.text = "もうちょい！"
        //0画像2に変わる
        } else if count == 0 {
        dispImageNum += 1
        }
        
       dispImage()
        
    }
}

// 川田がコメントを追加したよ！

