//
//  WarningViewController.swift
//  iCard
//
//  Created by roya on 2019/1/1.
//  Copyright © 2019年 EmrahKorkmaz. All rights reserved.
//

import UIKit

class WarningViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        let titles = ["预警中","预警处置","处置回执"]
        var childsVc:[UIViewController] = [UIViewController]()
        let contentVc = MornitorController()
        childsVc.append(contentVc)
        let contentVc1 = MornitorController()
        childsVc.append(contentVc1)
        let contentVc2 = DalilyViewController()
        childsVc.append(contentVc2)
        let pageView = TYPageView(frame: view.bounds, titles: titles, childControllers: childsVc, parentController: self)
        view.addSubview(pageView)
    }
       override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let _: CGFloat = 60
        // 如果没有导航栏，就返回状态栏的高度
    }

}
