//
//  MornitorViewController.swift
//  Created by roya on 2019/1/1.
//  Copyright © 2019年 EmrahKorkmaz. All rights reserved.
//

import UIKit
import SnapKit
import Foundation
class MornitorViewController: UIViewController {
    lazy var contentView: UIView = {
        let view:UIView = UIView(frame: CGRect(x: 0, y: 0, width: kScreen_width, height: 40))
        view.backgroundColor = UIColor.clear
        return view
    }()
    // 存放控制器的数组
    var subViewControllers: [UIViewController]?
    // 当前所在控制器的索引
    var currentIndex: NSInteger?
    var titles: [String]!
    // 热搜
    var hotSearchArray: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        let titles = ["天罗风险","机构状态","监测日报"]
        var childsVc:[UIViewController] = [UIViewController]()
        let contentVc = MornitorController()
        childsVc.append(contentVc)
        let contentVc1 = MornitorController()
        childsVc.append(contentVc1)
        let contentVc2 = DalilyViewController()
        childsVc.append(contentVc2)
        view.addSubview(contentView)
        let pageView = TYPageView(frame: view.bounds, titles: titles, childControllers: childsVc, parentController: self)
//    view.addSubview(contentView)
        view.addSubview(pageView)
//        pageView.snp.makeConstraints({ (make) in
//            if #available(iOS 11.0, *) {
//                make.top.equalTo(contentView.snp.bottom).offset(1)
//            } else {
//                make.top.equalTo(view.snp.top).offset(1)
//            }
//
//        })
        
    }
  override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let _: CGFloat = 60
        // 如果没有导航栏，就返回状态栏的高度
    }
    
}



