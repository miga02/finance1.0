//
//  ViewController.swift
//  iCard
//
//  Created by roya on 2019/1/7.
//  Copyright © 2019年 EmrahKorkmaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(displayP3Red: CGFloat(arc4random_uniform(255))/255, green: CGFloat(arc4random_uniform(255))/255, blue: CGFloat(arc4random_uniform(255))/255, alpha: 1)
    }

}
