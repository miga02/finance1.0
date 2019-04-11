
//  TopViewController.swift
//  finance
//  Created by roya on 2019/1/7.
//  Copyright © 2019年 EmrahKorkmaz. All rights reserved.

import UIKit

class TopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(displayP3Red: CGFloat(arc4random_uniform(255))/255, green: CGFloat(arc4random_uniform(255))/255, blue: CGFloat(arc4random_uniform(255))/255, alpha: 1)
    }

}
