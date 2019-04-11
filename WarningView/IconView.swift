//
//  IconView.swift
//  finance
//
//  Created by roya on 2019/2/20.
//  Copyright © 2019年 EmrahKorkmaz. All rights reserved.
//

import UIKit

class IconView: UIView {
    
    lazy var icon: UIView = {
        let label:UIView = UIView(frame:CGRect(x:0,y:0,width:2,height:20))
        label.backgroundColor = UIColor(red: 71/255, green: 160/255, blue: 252/255, alpha: 1)
        return label
    }()
    
    lazy var icon_txt: UILabel = {
        let label:UILabel = UILabel()
        label.font = UIFont.init(name: "Avenir-Light", size: 20)
        label.text = "工商信息"
        label.textAlignment = .center
        label.textColor = UIColor(r: 0, g: 0, b: 0, alpha: 1)
        return label
    }()

    lazy var index: UILabel = {
        let label:UILabel = UILabel()
        label.font = UIFont.init(name: "Avenir-Light", size: 14)
        label.text = "90"
        label.textAlignment = .center
        label.textColor = UIColor(r: 255, g: 255, b: 255, alpha: 1)
        label.backgroundColor = UIColor(r: 255, g: 85, b: 98, alpha: 1)
        return label
    }()
    
    convenience init(){
        self.init(cardStyleWithBackgroundColor: .first)
    }
    init(cardStyleWithBackgroundColor: ItemNames ){
        super.init(frame: CGRect())
        settingForLayout(ItemNames: cardStyleWithBackgroundColor)
    }
    fileprivate func settingForLayout(ItemNames style: ItemNames)
    {
        self.addSubview(icon)
        self.addSubview(icon_txt)
        icon.snp.makeConstraints({ (make) in
            make.width.equalTo(2)
            make.height.equalTo(20)
            make.centerY.equalTo(self.snp.centerY).offset(0)
            make.left.equalTo(self.snp.left).offset(10)
        })
        icon_txt.snp.makeConstraints({ (make) in
            make.centerY.equalTo(self.snp.centerY).offset(0)
            make.left.equalTo(icon.snp.right).offset(10)
        })
        if style == .first{
            
        }else if style == .second{
        self.addSubview(index)
        icon_txt.text="天罗地网指数"
            index.snp.makeConstraints({ (make) in
                make.height.equalTo(20)
                make.width.equalTo(20)
                make.centerY.equalTo(self.snp.centerY).offset(0)
                make.left.equalTo(icon_txt.snp.right).offset(10)
            })
        }
    }
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    public enum ItemNames{
        case first
        case second
       
    }
}
