//
//  ViewController.swift
//  Alien imageView
//
//  Created by D7703_30 on 2018. 4. 4..
//  Copyright © 2018년 김영석. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myimageview: UIImageView!
    
    @IBOutlet weak var counter: UILabel!
    var index = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //첫번째 이미지 보이기
        myimageview.image = UIImage(named: "frame1.png")
        
        counter.text = String(1)
    }

    @IBAction func update(_ sender: Any) {
       // myimageview.image = UIImage(named: "frame2.png")
       // index = index + 1
        //counter.text = String(index)
        if index == 5 {
            index = 1
        } else {
            index = index + 1
        }
        
        myimageview.image = UIImage(named: "frame\(index).png")
        counter.text = String(index)
    }
    
}

