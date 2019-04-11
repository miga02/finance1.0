//
//  NavigationView.swift
//  finance
//
//  Created by roya on 2019/2/10.
//  Copyright © 2019年 EmrahKorkmaz. All rights reserved.
//

import UIKit

class NavigationView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    lazy var logoImageView: UIImageView = {
        let imageView:UIImageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 5
        imageView.image = UIImage.init(named: "back")
        return imageView
    }()
    
    lazy var name: UILabel = {
        let label:UILabel = UILabel()
        label.font = UIFont.init(name: "Avenir-Light", size: 16)
        label.text = "返回"
        label.textAlignment = .center
        label.textColor = UIColor.white
        return label
    }()

    
    init(){
        super.init(frame: CGRect())
        settingForLayout()
    }
     fileprivate func settingForLayout()
     {
        
     }
    public enum cardStyle{
        case top

    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
