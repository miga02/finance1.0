//
//  MeView.swift
//  finance
//
//  Created by roya on 2019/1/9.
//  Copyright © 2019年 EmrahKorkmaz. All rights reserved.
//

import UIKit

class MeView: UIView {
    
    lazy var logoImageView: UIImageView = {
        let imageView:UIImageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 5
        imageView.image = UIImage.init(named: "head_icon")
        return imageView
    }()
    
    lazy var name: UILabel = {
        let label:UILabel = UILabel()
        label.font = UIFont.init(name: "Avenir-Light", size: 16)
        label.text = "超级管理员"
        label.textAlignment = .center
        label.textColor = UIColor.white
        return label
    }()
    lazy var username: UILabel = {
        let label:UILabel = UILabel()
        label.font = UIFont.init(name: "Avenir-Light", size: 16)
        label.text = "admin"
        label.textAlignment = .center
        label.textColor = UIColor.white
        return label
    }()
    
    lazy var type: UILabel = {
        let label:UILabel = UILabel()
        label.font = UIFont.init(name: "Avenir-Light", size: 16)
        label.text = "管理员"
        label.textAlignment = .center
        label.textColor = UIColor.white
        return label
    }()
    
    lazy var msgImageView: UIImageView = {
        let imageView:UIImageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 5
        imageView.image = UIImage.init(named: "msg_icon")
        return imageView
    }()
    lazy var labeltext: UILabel = {
        let label:UILabel = UILabel()
        label.font = UIFont.init(name: "Avenir-Light", size: 14)
        label.text = "消息中心"
        label.textAlignment = .center
        label.textColor = UIColor.black
        return label
    }()
    lazy var exit_btn: UIButton = {
        let label:UIButton = UIButton()
        label.titleLabel?.font = UIFont.init(name: "Avenir-Light", size: 16)
        label.titleLabel?.text = "退出"
        label.titleLabel?.textAlignment = .center
        label.backgroundColor = UIColor(red: 255/255, green: 85/255, blue: 98/255, alpha: 1)
        label.titleLabel?.textColor = UIColor.white
        return label
    }()
    
    convenience init(){
        self.init(cardStyleWithBackgroundColor: .top)
    }

    
    init(cardStyleWithBackgroundColor: cardStyle ){
        super.init(frame: CGRect())
        settingForLayout(cardStyle: cardStyleWithBackgroundColor)
    }
 
  fileprivate func settingForLayout(cardStyle style: cardStyle){
        self.layer.cornerRadius = 8
        if style == .top{
            self.addSubview(logoImageView)
            self.addSubview(name)
            self.addSubview(username)
            self.addSubview(type)
            fillWithColor()
            name.snp.makeConstraints({ (make) in
                make.centerX.equalTo(self.snp.centerX)
                make.centerY.equalTo(self.snp.centerY)
            })
            logoImageView.snp.makeConstraints({ (make) in
                make.height.equalTo(60)
                make.bottom.equalTo(name.snp.top).offset(-20)
                make.centerX.equalTo(self.snp.centerX)
            })
        
            username.snp.makeConstraints({ (make) in
                make.top.equalTo(name.snp.bottom).offset(10)
                make.centerX.equalTo(self.snp.centerX)
            })
            type.snp.makeConstraints({ (make) in
                make.top.equalTo(username.snp.bottom).offset(10)
                make.centerX.equalTo(self.snp.centerX)
            })
        }else {
            fillWithColor1()
            self.addSubview(msgImageView)
            self.addSubview(labeltext)
            
            msgImageView.snp.makeConstraints({ (make) in
                make.height.equalTo(25)
                make.left.equalTo(self.snp.left).offset(10)
                make.centerY.equalTo(self.snp.centerY)
            })
            labeltext.snp.makeConstraints({ (make) in
                make.left.equalTo(msgImageView.snp.right).offset(5)
                make.centerY.equalTo(self.snp.centerY)
            })
            if style == .layout1{
           msgImageView.image = UIImage.init(named: "msg_icon")
           labeltext.text = "消息中心"
        }else if style == .layout2{
            msgImageView.image = UIImage.init(named: "cal_icon")
            labeltext.text = "统计分析"
        }else if style == .layout3{
            msgImageView.image = UIImage.init(named: "clear_icon")
            labeltext.text = "清理缓存"
        }else if style == .layout4{
            msgImageView.image = UIImage.init(named: "about_icon")
            labeltext.text = "关于我们"
        }else if style == .layout5{
            msgImageView.image = UIImage.init(named: "sm_icon")
            labeltext.text = "申明"
        }else if style == .layout_exit{
                fillWithColor2()
                self.addSubview(exit_btn)
                exit_btn.layer.cornerRadius = 2
                exit_btn.snp.makeConstraints({ (make) in
                    make.height.equalTo(50)
                    make.left.equalTo(self.snp.left).offset(10)
                    make.right.equalTo(self.snp.right).offset(-10)
                    make.centerY.equalTo(self.snp.centerY)
                })
        }
            
    }
    }

    fileprivate func fillWithColor(){
            self.backgroundColor = UIColor(red: 71/255, green: 160/255, blue: 252/255, alpha: 1)
    }
    fileprivate func fillWithColor2(){
        self.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
    }
    
    fileprivate func fillWithColor1(){
        self.backgroundColor = UIColor.white
    }
    
    public enum cardStyle{
        case top
        case layout1
        case layout2
        case layout3
        case layout4
        case layout5
        case layout_exit
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
  

    
}


