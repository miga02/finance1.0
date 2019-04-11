//
//  NavigationUIView.swift
//  finance
//
//  Created by roya on 2019/2/10.
//  Copyright © 2019年 EmrahKorkmaz. All rights reserved.
//

import UIKit

class NavigationUIView: UIView {
    lazy var contentView: UIView = {
        let view:UIView = UIView()
        view.backgroundColor = UIColor(r: 255, g: 255, b: 255, alpha: 1)
        return view
    }()
    lazy var back_img: UIButton = {
        let label:UIButton = UIButton()
        label.titleLabel?.font = UIFont.init(name: "Avenir-Light", size: 16)
        label.titleLabel?.text = "退出"
        label.titleLabel?.textAlignment = .center
        label.titleLabel?.textColor = UIColor.black
        return label
    }()
    lazy var name: UILabel = {
        let label:UILabel = UILabel()
        label.font = UIFont.init(name: "Avenir-Light", size: 18)
        label.text = "返回"
        label.textAlignment = .center
        label.textColor = UIColor.black
        return label
    }()
   convenience init(){
      self.init(cardStyleWithBackgroundColor: .top)
    }
    
    init(cardStyleWithBackgroundColor: cardStyle ){
        super.init(frame: CGRect())
        settingForLayout()
    }
    fileprivate func settingForLayout()
    {
      self.fillWithColor()
      self.addSubview(contentView)
      self.addSubview(back_img)
      self.addSubview(name)
      contentView.snp.makeConstraints({ (make) in
        make.top.equalTo(self.snp.top)
        make.left.equalTo(self.snp.left)
        make.bottom.equalTo(self.snp.bottom)
        make.right.equalTo(self.snp.right)
        })
      contentView.backgroundColor = UIColor(r: 255, g: 255, b: 255, alpha: 1)
      back_img.snp.makeConstraints({ (make) in
       make.centerY.equalTo(self.snp.centerY)
       make.left.equalTo(self.snp.left).offset(20)
       make.width.equalTo(10)
        make.height.equalTo(20)
       })
      name.snp.makeConstraints({ (make) in
         make.left.equalTo(back_img.snp.right).offset(15)
         make.centerY.equalTo(self.snp.centerY)
        })
    }
    fileprivate func fillWithColor(){
        self.backgroundColor = UIColor(r: 255, g: 255, b: 255, alpha: 1)
    }
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public enum cardStyle{
        case top
    }
    
}
