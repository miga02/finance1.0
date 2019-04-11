//
//  MornitorTopView.swift
//  finance
//  Created by roya on 2019/1/22.
//  Copyright © 2019年 EmrahKorkmaz. All rights reserved.
//

import UIKit

class MornitorTopView: UIView {
    
    lazy var contentView: UIView = {
        let view:UIView = UIView()
        view.backgroundColor = UIColor(red: 71/255, green: 160/255, blue: 252/255, alpha: 1)
        return view
    }()
    lazy var company_name: UILabel = {
        let label:UILabel = UILabel()
        label.font = UIFont.init(name: "Avenir-Light", size: 16)
        label.text = "机构名称"
        label.textAlignment = .center
        label.textColor = UIColor.white
        return label
    }()
    lazy var time: UILabel = {
        let label:UILabel = UILabel()
        label.font = UIFont.init(name: "Avenir-Light", size: 16)
        label.text = "区域"
        label.textAlignment = .center
        label.textColor = UIColor.white
        return label
    }()
    
    lazy var risk_level: UILabel = {
        let label:UILabel = UILabel()
        label.font = UIFont.init(name: "Avenir-Light", size: 16)
        label.text = "风险状态"
        label.textAlignment = .center
        label.textColor = UIColor.white
        return label
    }()
    convenience init(cardColors: cardStyle){
        self.init(cardStyleWithBackgroundColor: .card1)
    }
    init(cardStyleWithBackgroundColor: cardStyle){
        super.init(frame: CGRect())
         self.initCell()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func initCell(){
        contentView.layer.cornerRadius = 10
//        let maskPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: [UIRectCorner.topLeft, UIRectCorner.topRight], cornerRadii:       CGSize(width: 5, height: 5))
//        let maskLayer = CAShapeLayer()
//        maskLayer.frame = self.bounds
//        maskLayer.path = maskPath.cgPath
//        self.layer.mask = maskLayer
        self.addSubview(self.contentView);
        self.addSubview(self.company_name);
        self.addSubview(self.time);
        self.addSubview(self.risk_level);

        self.company_name.snp.makeConstraints({ (make) in
            make.left.equalTo(self.snp.left).offset(10)
            make.centerY.equalTo(self.snp.centerY)
        })
        time.snp.makeConstraints({ (make) in
            make.right.equalTo(risk_level.snp.left).offset(-20)
            make.centerY.equalTo(self.snp.centerY)
        })
        risk_level.snp.makeConstraints({ (make) in
            make.right.equalTo(self.snp.right).offset(-10)
            make.centerY.equalTo(self.snp.centerY)
        })
    }
    
   public enum cardStyle{
        case card1
        case card2
        case card3
        case card4
        case card5
        case card6
    }
}
