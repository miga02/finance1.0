//
//  FirstPageHeadView.swift
//  iCard
//
//  Created by roya on 2019/1/4.
//  Copyright © 2019年 EmrahKorkmaz. All rights reserved.
//

import UIKit

class FirstPageHeadView: UIView {
    lazy var contentView: UIView = {
        let view:UIView = UIView()
        view.backgroundColor = UIColor.clear
        return view
    }()
    
    init(cardStyleWithBackgroundColor: cardStyle){
        super.init(frame: CGRect())
        addItemsWithColors(cardStyleWithBackgroundColor)
        settingForLayout(cardStyle: cardStyleWithBackgroundColor)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    fileprivate func addItemsWithColors(_ cardStyle: cardStyle){
        self.addSubview(contentView)
     
      if cardStyle == .yujingcard{
            
            
        }else if cardStyle == .fengxiancard{
            
        }else if cardStyle == .yetaicard{
            
        }
        
    
    }
    
    
    fileprivate func settingForLayout(cardStyle style: cardStyle){
        self.layer.cornerRadius = 8
        // self.layer.borderWidth = 2 // 边框宽度
        // 设置边框的颜色
        //  self.layer.borderColor = UIColor.blue.cgColor
        //  self.layer.borderColor = UIColor(red: 70/255, green: 157/255, blue: 248/255, alpha: 1).cgColor
        //        if cardVisual == .withBackgroundImage {
        //
        //
        //        }
        
        contentView.snp.makeConstraints({ (make) in
            make.left.equalTo(self.snp.left)
            make.right.equalTo(self.snp.right)
            make.top.equalTo(self.snp.top)
            make.bottom.equalTo(self.snp.bottom)
        })
        if style == .yujingcard{
            
            
        }else if style == .fengxiancard{
            
            
        }else if style == .yetaicard{
 
        }
    }
    public enum cardStyle{
        case yujingcard
        case fengxiancard
        case yetaicard
    }
}
