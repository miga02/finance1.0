//
//  ItemLabelView.swift
//  finance
//
//  Created by roya on 2019/2/20.
//  Copyright © 2019年 EmrahKorkmaz. All rights reserved.
//

import UIKit

class ItemLabelView: UIView {
    
    lazy var name: UILabel = {
        let label:UILabel = UILabel()
        label.font = UIFont.init(name: "Avenir-Light", size: 18)
        label.text = "经营主体："
        label.textAlignment = .center
        label.textColor = UIColor(r: 153, g: 153, b: 153, alpha: 1)
        return label
    }()
    
    lazy var type: UILabel = {
        let label:UILabel = UILabel()
        label.font = UIFont.init(name: "Avenir-Light", size: 18)
        label.text = "浙江巨元普惠网络科技有限公司"
        label.textAlignment = .right
        label.textColor = UIColor(r: 0, g: 0, b: 0 , alpha: 1)
        return label
    }()
    lazy var line: UIView = {
        let label:UIView = UIView()
        label.backgroundColor = UIColor(r: 153, g: 153, b: 153, alpha: 1)
        return label
    }()
    convenience init(){
        self.init(cardStyleWithBackgroundColor: .name)
    }
    init(cardStyleWithBackgroundColor: ItemNames ){
        super.init(frame: CGRect())
        settingForLayout(ItemNames: cardStyleWithBackgroundColor)
    }
    fileprivate func settingForLayout(ItemNames style: ItemNames)
    {
        self.addSubview(name)
        self.addSubview(type)
        self.addSubview(line)
        line.backgroundColor = UIColor(r: 240, g: 240, b: 240, alpha: 1)
        name.snp.makeConstraints({ (make) in
            make.centerY.equalTo(self.snp.centerY).offset(0)
            make.left.equalTo(self.snp.left).offset(10)
        })
        type.snp.makeConstraints({ (make) in
            make.centerY.equalTo(self.snp.centerY).offset(0)
            make.right.equalTo(self.snp.right).offset(-10)
        })
        line.snp.makeConstraints({ (make) in
            make.height.equalTo(0.5)
            make.left.equalTo(self.snp.left).offset(10)
            make.right.equalTo(self.snp.right).offset(-10)
            make.bottom.equalTo(self.snp.bottom)
        })
        if style == .name{
            
        }else if style == .address{
            name.text = "注册地址"
            type.text = "浙江省杭州市上城区"
        }else if style == .realaddress{
            name.text = "实际经营地址"
            type.text = "浙江省杭州市余杭区"
        }else if style == .official_address{
             name.text = "官网地址"
             type.text = "www.baidu.com"
        }else if style == .people{
             name.text = "法人代表"
            type.text = "罗媛媛"
        }else if style == .money{
             name.text = "注册资金"
             type.text = "2000"
        }else if style == .communicate{
             name.text = "联系方式"
             type.text = "15669235927"
        }else if style == .number{
             name.text = "工商备案号"
             type.text = "HJKPKPGUIPUTFIUTF"
        }
        
    }
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    public enum ItemNames{
        case name
        case address
        case realaddress
        case official_address
        case people
        case money
        case communicate
        case number
    }

}
