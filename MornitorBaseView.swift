//
//  MornitorBaseView.swift
//  finance
//
//  Created by roya on 2019/1/8.
//  Copyright © 2019年 EmrahKorkmaz. All rights reserved.
//

import UIKit
import Foundation
class MornitorBaseView: UIView {
 
    
   init(cardStyleWithBackgroundColor: cardStyle){
        super.init(frame: CGRect())
        settingForLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    fileprivate func settingForLayout(){
//        let titles = ["天罗风险","机构状态","监测日报"]
//        var childsVc:[UIViewController] = [UIViewController]()
//        for _ in 0..<titles.count {
//            let contentVc = TopViewController()
//            childsVc.append(contentVc)
//        }
//        var parentVc:UIViewController = MornitorViewController()
//        let pageView = TYPageView(frame: self.bounds, titles: titles, childControllers: childsVc, parentController:parentVc )
//        self.addSubview(pageView)
    }

    
    public enum cardStyle{
        case leftcard
        case rightcard
    }
    
}
