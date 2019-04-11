//
//  WarningView.swift
//  finance
//
//  Created by roya on 2019/2/19.
//  Copyright © 2019年 EmrahKorkmaz. All rights reserved.
//

import UIKit

class WarningView: UIView {
    open var chartType: AAChartType?
    open var aaChartModel: AAChartModel?
    open var aaChartView: AAChartView?
    
    lazy var contentView: UIView = {
        let view:UIView = UIView()
        view.backgroundColor = UIColor(r: 255, g: 85, b: 98, alpha: 1)
        view.layer.cornerRadius = 5
        return view
    }()
    lazy var grapy: UIView = {
        let view:UIView = UIView()
        view.backgroundColor = UIColor(r: 255, g: 255, b: 255, alpha: 1)
        return view
    }()
    lazy var company_name: UILabel = {
        let label:UILabel = UILabel()
        label.font = UIFont.init(name: "Avenir-Light", size: 20)
        label.text = "宁波**网络科技有限公司"
        label.textAlignment = .center
        label.textColor = UIColor.white
        return label
    }()
    lazy var type: UILabel = {
        let label:UILabel = UILabel()
        label.font = UIFont.init(name: "Avenir-Light", size: 14)
        label.text = "网络借贷"
        label.textAlignment = .center
        label.textColor = UIColor(r: 255, g: 85, b: 98, alpha: 1)
        label.backgroundColor = UIColor(r: 255, g: 255, b: 255, alpha: 1)
        return label
    }()
    lazy var risk_level: UILabel = {
        let label:UILabel = UILabel()
        label.font = UIFont.init(name: "Helvetica-Bold", size: 60)
        label.text = "90"
        label.textAlignment = .center
        label.textColor = UIColor(r: 255, g: 129, b: 138, alpha: 1)
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
        self.backgroundColor = UIColor(r: 255, g: 0, b: 0, alpha: 1)
        self.addSubview(contentView)
        contentView.addSubview(company_name)
        contentView.addSubview(type)
        contentView.addSubview(risk_level)
        let icon_view: IconView = IconView(cardStyleWithBackgroundColor: .first)
        self.addSubview(icon_view)
        let myview: ItemLabelView = ItemLabelView(cardStyleWithBackgroundColor: .name)
        self.addSubview(myview)
        let myview1: ItemLabelView = ItemLabelView(cardStyleWithBackgroundColor: .address)
        self.addSubview(myview1)
        let myview2: ItemLabelView = ItemLabelView(cardStyleWithBackgroundColor: .realaddress)
        self.addSubview(myview2)
        let myview3: ItemLabelView = ItemLabelView(cardStyleWithBackgroundColor: .official_address)
        self.addSubview(myview3)
        let myview4: ItemLabelView = ItemLabelView(cardStyleWithBackgroundColor: .people)
        self.addSubview(myview4)
        let myview5: ItemLabelView = ItemLabelView(cardStyleWithBackgroundColor: .money)
        self.addSubview(myview5)
        let myview6: ItemLabelView = ItemLabelView(cardStyleWithBackgroundColor: .communicate)
        self.addSubview(myview6)
        let myview7: ItemLabelView = ItemLabelView(cardStyleWithBackgroundColor: .number)
        self.addSubview(myview7)
        let icon_view1: IconView = IconView(cardStyleWithBackgroundColor: .second)
        self.addSubview(icon_view1)
        self.addSubview(grapy)
        self.setpolarChartMixedView()
        contentView.snp.makeConstraints({ (make) in
        make.height.equalTo(100)
        make.top.equalTo(self.snp.top).offset(10)
        make.left.equalTo(self.snp.left).offset(0)
        make.right.equalTo(self.snp.right).offset(0)
        })
        company_name.snp.makeConstraints({ (make) in
            make.top.equalTo(contentView.snp.top).offset(20)
            make.left.equalTo(contentView.snp.left).offset(20)
        })
        type.snp.makeConstraints({ (make) in
            make.centerY.equalTo(contentView.snp.centerY).offset(20)
            make.left.equalTo(contentView.snp.left).offset(20)
            make.width.equalTo(80)
            make.height.equalTo(25)
        })
        risk_level.snp.makeConstraints({(make) in
            make.bottom.equalTo(contentView.snp.bottom).offset(-10)
            make.right.equalTo(contentView.snp.right).offset(-10)
        })
        icon_view.snp.makeConstraints({(make) in
          make.height.equalTo(50)
          make.top.equalTo(contentView.snp.bottom)
        })
        myview.snp.makeConstraints({ (make) in
            make.height.equalTo(50)
            make.left.equalTo(self.snp.left).offset(0)
            make.right.equalTo(self.snp.right).offset(0)
            make.top.equalTo(icon_view.snp.bottom).offset(0)
        })
        myview1.snp.makeConstraints({ (make) in
            make.height.equalTo(50)
            make.left.equalTo(self.snp.left).offset(0)
            make.right.equalTo(self.snp.right).offset(0)
            make.top.equalTo(myview.snp.bottom).offset(0)
        })
        myview2.snp.makeConstraints({ (make) in
            make.height.equalTo(50)
            make.left.equalTo(self.snp.left).offset(0)
            make.right.equalTo(self.snp.right).offset(0)
            make.top.equalTo(myview1.snp.bottom).offset(0)
        })
        myview3.snp.makeConstraints({ (make) in
            make.height.equalTo(50)
            make.left.equalTo(self.snp.left).offset(0)
            make.right.equalTo(self.snp.right).offset(0)
            make.top.equalTo(myview2.snp.bottom).offset(0)
        })
        myview4.snp.makeConstraints({ (make) in
            make.height.equalTo(50)
            make.left.equalTo(self.snp.left).offset(0)
            make.right.equalTo(self.snp.right).offset(0)
            make.top.equalTo(myview3.snp.bottom).offset(0)
        })
        myview5.snp.makeConstraints({ (make) in
            make.height.equalTo(50)
            make.left.equalTo(self.snp.left).offset(0)
            make.right.equalTo(self.snp.right).offset(0)
            make.top.equalTo(myview4.snp.bottom).offset(0)
        })
        myview6.snp.makeConstraints({ (make) in
            make.height.equalTo(50)
            make.left.equalTo(self.snp.left).offset(0)
            make.right.equalTo(self.snp.right).offset(0)
            make.top.equalTo(myview5.snp.bottom).offset(0)
        })
        myview7.snp.makeConstraints({ (make) in
            make.height.equalTo(50)
            make.left.equalTo(self.snp.left).offset(0)
            make.right.equalTo(self.snp.right).offset(0)
            make.top.equalTo(myview6.snp.bottom).offset(0)
        })
        icon_view1.snp.makeConstraints({ (make) in
            make.height.equalTo(50)
            make.top.equalTo(myview7.snp.bottom)
        })
        grapy.snp.makeConstraints({ (make) in
            make.height.equalTo((self.frame.size.height) / 10)
            make.top.equalTo(icon_view1.snp.bottom).offset(0)
            make.left.equalTo(self.snp.left).offset(10)
            make.right.equalTo(self.snp.right).offset(-10)
        })
        aaChartView?.snp.makeConstraints({ (make) in
            make.height.equalTo((self.frame.size.height) / 10-10)
            make.left.equalTo(self.snp.left).offset(0)
            make.right.equalTo(self.snp.right).offset(0)
        })
     }
    func setpolarChartMixedView() {
        aaChartView = AAChartView()
        let chartWidth = self.frame.size.width
        let chartHeight = self.frame.size.height
        aaChartView?.frame = CGRect(x: 0,
                                    y: 60,
                                    width: chartWidth,
                                    height: chartHeight / 7)
        aaChartView?.contentHeight = (self.frame.size.height / 7) - 10
        grapy.addSubview(aaChartView!)
        aaChartView?.scrollEnabled = false
        aaChartModel = AAChartModel()
            .chartType(.Column)
            .polar(true)
            .dataLabelEnabled(false)
            .categories(["收益率偏离指数", "网格化指数", "部门信用指数", "负面舆情指数", "运行异常指数", "业务违规指数", "关联风险指数", "虚假宣传指数"])
            .marginLeft(50)
            .marginRight(30)
            .series(
                [
                    AASeriesElement()
                        .name("天罗地网指数")
                        .data([7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5])
                        .colorByPoint(false)
                        .toDic()!
                ]
        )
        aaChartView?.aa_drawChartWithChartModel(aaChartModel!)
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
