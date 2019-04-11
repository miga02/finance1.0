//
//  WarningDetailViewController.swift
//  finance
//
//  Created by roya on 2019/1/29.
//  Copyright © 2019年 EmrahKorkmaz. All rights reserved.
//

import UIKit
import SnapKit
class WarningDetailViewController:UIViewController{
    
    open var chartType: AAChartType?
    open var aaChartModel: AAChartModel?
    open var aaChartView: AAChartView?
    
    lazy var line: UIView = {
        let mainSize = UIScreen.main.bounds.size
        let view:UIView = UIView(frame:CGRect(x:0, y:0,width: mainSize.width, height:0.5))
        view.backgroundColor = UIColor(red: 212/255, green: 212/255, blue: 212/255, alpha: 1)
        return view
    }()
    lazy var contentView: UIView = {
        let view:UIView = UIView()
        view.backgroundColor = UIColor(r: 255, g: 85, b: 98, alpha: 1)
        view.layer.cornerRadius = 5
        return view
    }()
    lazy var scrollView: UIScrollView = {
        let kScreenWidth = UIScreen.main.bounds.size.width
        let kScreenHeight = UIScreen.main.bounds.size.height
        let SCREEN_WIDTH  = self.view.frame.width
        let SCREEN_HIGHT = self.view.frame.height
        let obj = UIScrollView(frame: CGRect(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight))
        return obj
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor(r: 255, g: 255, b: 255, alpha: 1)
        let title: NavigationUIView = NavigationUIView()
        let myview: WarningView = WarningView()
//      self.initScrollView()
        view.addSubview(title)
        view.addSubview(myview)
        self.setColumnChartView()
        title.backgroundColor=UIColor.white
//      scrollView.snp.makeConstraints({ (make) in
//            make.top.equalTo(view.snp.top).offset(10)
//            make.left.equalTo(view.snp.left).offset(10)
//            make.right.equalTo(view.snp.right).offset(-10)
//         })
        title.snp.makeConstraints({ (make) in
            make.height.equalTo(40)
            if #available(iOS 11.0, *) {
                make.top.equalTo(view.safeAreaInsets.top).offset(30)
            } else {
                make.top.equalTo(view.snp.top).offset(0)
            }
        })
        myview.snp.makeConstraints({ (make) in
         make.top.equalTo(title.snp.bottom).offset(10)
         make.left.equalTo(view.snp.left).offset(10)
         make.right.equalTo(view.snp.right).offset(-10)
        })
//        aaChartView?.snp.makeConstraints({ (make) in
//            make.height.equalTo((view.frame.size.height)/6)
//            make.top.equalTo(myview.snp.bottom).offset(0)
//            make.left.equalTo(view.snp.left).offset(10)
//            make.right.equalTo(view.snp.right).offset(-10)
//        })
        title.back_img.setImage(UIImage(named:"back") , for: UIControlState.normal)
        title.back_img.addTarget(self, action: #selector(backToPrevious), for: UIControlEvents.touchUpInside)
    }
    
    func setColumnChartView() {
        aaChartView = AAChartView()
        let chartWidth = view.frame.size.width
        let chartHeight = view.frame.size.height
        aaChartView?.frame = CGRect(x: 0,
                                    y: 60,
                                    width: chartWidth,
                                    height: chartHeight / 6)
        aaChartView?.contentHeight = (view.frame.size.height / 6) - 10
        self.view.addSubview(aaChartView!)
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
               ])
        aaChartView?.aa_drawChartWithChartModel(aaChartModel!)
    }
    
    fileprivate func initScrollView(){
        let kScreenWidth = UIScreen.main.bounds.size.width
        let kScreenHeight = UIScreen.main.bounds.size.height
        scrollView.contentSize = CGSize(width: kScreenWidth*2, height: kScreenHeight+50)
        //设置scrollView的偏移量(重要)
        //scrollView.contentOffset = CGPoint(x: kScreenWidth, y: 0)
        //设置滚动条的样式
        scrollView.indicatorStyle = .white
        //设置是否显示滚动条
        scrollView.showsVerticalScrollIndicator = false//垂直滚动条
        scrollView.showsHorizontalScrollIndicator = false//水平滚动条
        //方向锁(水平移动就不能垂直移动，垂直移动就不能水平移动，只能朝一个方向滚动)
        scrollView.isDirectionalLockEnabled = true
        // 设置是否有弹簧效果
        scrollView.bounces = false
        scrollView.scrollsToTop = false
        scrollView.isPagingEnabled = false
        //scrollView 代理属性
        scrollView.delegate = self as? UIScrollViewDelegate    //设置scrollView最大最小缩放比例
        scrollView.minimumZoomScale = 1
        scrollView.maximumZoomScale = 3
        scrollView.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        self.view.addSubview(scrollView)
    }
   @objc func backToPrevious(){
        self.navigationController?.popViewController(animated: true);
    }
}

