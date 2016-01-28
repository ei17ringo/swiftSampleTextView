//
//  ViewController.swift
//  sampleTextView
//
//  Created by Eriko Ichinohe on 2016/01/28.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextView: UITextView!
    
    @IBOutlet weak var btnClose: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextView.text = "Hello"
        myTextView.textColor = UIColor.blueColor()
        myTextView.font = UIFont(name: "AmericanTypewriter", size: 20)
        myTextView.textAlignment = NSTextAlignment.Center
        
        // TODO:Hello10個出す
        for var i=1; i <= 10; i++ {
            myTextView.text = myTextView.text + "Hello"
        }
        
        //TODO: こんにちはnで10個出す
        var n = 0
        while (n < 10){
            myTextView.text = myTextView.text + "こんにちは\(n)"
            n++
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapClose(sender: UIButton) {
        
        //キーボードを閉じる
        myTextView.resignFirstResponder()
    }

}

