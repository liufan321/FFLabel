//
//  ViewController.swift
//  FFLabel Swift Demo
//
//  Created by 刘凡 on 15/7/18.
//  Copyright © 2015年 joyios. All rights reserved.
//

import UIKit
import FFLabel

let demoContent = "#FFLabel#This is a @FFLabel Demo, access http://github.com/liufan321/fflabel can get the demo project. Follow @liufan2000 to get more information."

class ViewController: UIViewController, FFLabelDelegate {

    @IBOutlet weak var label: FFLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.delegate = self
        label.text = demoContent
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = UIColor.darkGray()
    }
    
    func labelDidSelectedLinkText(label: FFLabel, text: String) {
        print(text)
    }
}

