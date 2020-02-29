//
//  ViewController.swift
//  Swift5CountUp1
//
//  Created by MBP010 on 2020/02/29.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var countLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // labelの文字を0にする(String型)
        countLabel.text = "0"
    }
    
    
    @IBAction func plus(_ sender: Any) {
        // カウントアップさせる
        count = count + 1
        
        // labelに文字を反映させる(数字)
        countLabel.text = String(count)
        
        // 10以上になったら色を黄色に変更させる
        
    }
    
    @IBAction func minus(_ sender: Any) {
        // カウントダウンさせる
        count = count - 1
        
        // labelに文字を反映させる(数字)
        countLabel.text = String(count)
        
        // 0以下になったら色を黄色に変更させる
    }
    
    func changeTextColor(){
        countLabel.textColor = .yellow
    }
    
    func resetColor(){
        countLabel.textColor = .white
    }
}

