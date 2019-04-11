//
//  LoginView.swift
//  finance
//
//  Created by roya on 2019/1/22.
//  Copyright © 2019年 EmrahKorkmaz. All rights reserved.
//

import UIKit

class LoginView: UIView {
    lazy var contentView: UIView = {
        let view:UIView = UIView()
        view.backgroundColor = UIColor.clear
        return view
    }()
    lazy var msgImageView: UIImageView = {
        let imageView:UIImageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 5
        imageView.image = UIImage.init(named: "msg_icon")
        return imageView
    }()
    
    convenience init(){
        self.init(cardStyleWithBackgroundColor: .card1)
    }
    
    
    init(cardStyleWithBackgroundColor: cardStyle ){
        super.init(frame: CGRect())
        settingForLayout(cardStyle: cardStyleWithBackgroundColor)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func settingForLayout(cardStyle style: cardStyle){
        self.backgroundColor = UIColor(r: 255, g: 255, b: 255, alpha: 1)
        self.addSubview(contentView)
        self.addSubview(msgImageView)
        contentView.snp.makeConstraints({ (make) in
            make.left.equalTo(self.snp.left)
            make.right.equalTo(self.snp.right)
            make.top.equalTo(self.snp.top)
            make.bottom.equalTo(self.snp.bottom)
        })
        msgImageView.snp.makeConstraints({ (make) in
            make.centerX.equalTo(self.snp.centerX)
            make.centerY.equalTo(self.snp.centerY)
        })
    }
    
    public enum cardStyle{
        case card1
    }
}
