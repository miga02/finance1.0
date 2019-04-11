//
//  MeViewController.swift
//  iCard
//
//  Created by roya on 2019/1/1.
//  Copyright © 2019年 EmrahKorkmaz. All rights reserved.
//

import UIKit
import SnapKit
class MeViewController: UIViewController ,UIScrollViewDelegate{
    
    lazy var scrollView: UIScrollView = {
        //屏幕的宽
        let kScreenWidth = UIScreen.main.bounds.size.width
        //屏幕的高
        let kScreenHeight = UIScreen.main.bounds.size.height
        let SCREEN_WIDTH  = self.view.frame.width
        let SCREEN_HIGHT = self.view.frame.height
        let obj = UIScrollView(frame: CGRect(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight))
        return obj
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        initScrollView()
        initcard()
    }
    fileprivate func initScrollView(){
        let kScreenWidth = UIScreen.main.bounds.size.width
        //屏幕的高
        let kScreenHeight = UIScreen.main.bounds.size.height
        scrollView.contentSize = CGSize(width: kScreenWidth*3, height: kScreenHeight+50)
        //设置scrollView的偏移量(重要)
    //    scrollView.contentOffset = CGPoint(x: kScreenWidth, y: 0)
        //设置滚动条的样式
        scrollView.indicatorStyle = .white
        
        //设置是否显示滚动条
        scrollView.showsVerticalScrollIndicator = false//垂直滚动条
        scrollView.showsHorizontalScrollIndicator = false//水平滚动条
        
        //方向锁(水平移动就不能垂直移动，垂直移动就不能水平移动，只能朝一个方向滚动)
     //   scrollView.isDirectionalLockEnabled = true
        // 设置是否有弹簧效果
        scrollView.bounces = false
        scrollView.scrollsToTop = false
        scrollView.isPagingEnabled = false
        //scrollView代理属性
        scrollView.delegate = self    //设置scrollView最大最小缩放比例
        scrollView.minimumZoomScale = 1
        scrollView.maximumZoomScale = 3
      
        scrollView.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        self.view.addSubview(scrollView)
    }
    
    fileprivate func initcard(){
        let card1: MeView = MeView(cardStyleWithBackgroundColor: .top)
        let card2: MeView = MeView(cardStyleWithBackgroundColor: .layout1)
        let card3: MeView = MeView(cardStyleWithBackgroundColor: .layout2)
        let card4: MeView = MeView(cardStyleWithBackgroundColor: .layout3)
        let card5: MeView = MeView(cardStyleWithBackgroundColor: .layout4)
        let card6: MeView = MeView(cardStyleWithBackgroundColor: .layout5)
        let layout_exit: MeView = MeView(cardStyleWithBackgroundColor: .layout_exit)
        
        self.scrollView.addSubview(card1)
        self.scrollView.addSubview(card2)
        self.scrollView.addSubview(card3)
        self.scrollView.addSubview(card4)
        self.scrollView.addSubview(card5)
        self.scrollView.addSubview(card6)
        self.scrollView.addSubview(layout_exit)
        
        scrollView.snp.makeConstraints({ (make) in
            make.edges.equalToSuperview()
        })
    
        card1.snp.makeConstraints({ (make) in
            make.height.equalTo(240)
            if #available(iOS 11.0, *) {
            make.top.equalTo(view.safeAreaInsets.top).offset(0)
            } else {
            make.top.equalTo(view.snp.top).offset(0)
            }
            make.left.equalTo(view.snp.left).offset(10)
            make.right.equalTo(view.snp.right).offset(-10)
        })
        card2.snp.makeConstraints({ (make) in
            make.height.equalTo(60)
            make.top.equalTo(card1.snp.bottom).offset(20)
            make.left.equalTo(view.snp.left).offset(0)
            make.right.equalTo(view.snp.right).offset(0)
        })
        card3.snp.makeConstraints({ (make) in
            make.height.equalTo(60)
            make.top.equalTo(card2.snp.bottom).offset(1)
            make.left.equalTo(view.snp.left).offset(0)
            make.right.equalTo(view.snp.right).offset(0)
        })
        card4.snp.makeConstraints({ (make) in
            make.height.equalTo(60)
            make.top.equalTo(card3.snp.bottom).offset(1)
            make.left.equalTo(view.snp.left).offset(0)
            make.right.equalTo(view.snp.right).offset(0)
        })
        card5.snp.makeConstraints({ (make) in
            make.height.equalTo(60)
            make.top.equalTo(card4.snp.bottom).offset(1)
            make.left.equalTo(view.snp.left).offset(0)
            make.right.equalTo(view.snp.right).offset(0)
        })
        card6.snp.makeConstraints({ (make) in
            make.height.equalTo(60)
            make.top.equalTo(card5.snp.bottom).offset(1)
            make.left.equalTo(view.snp.left).offset(0)
            make.right.equalTo(view.snp.right).offset(0)
        })
        layout_exit.snp.makeConstraints({ (make) in
            make.height.equalTo(60)
            make.top.equalTo(card6.snp.bottom).offset(50)
            make.left.equalTo(view.snp.left).offset(0)
            make.right.equalTo(view.snp.right).offset(0)
        })
       layout_exit.exit_btn.setTitle("退出", for: .normal)
       layout_exit.exit_btn.addTarget(self, action: #selector(Logout), for: UIControlEvents.touchUpInside)
     }
    
     override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let _: CGFloat = 20
     }
    
    @objc func Logout() {
        let vc = LoginViewController()
//        navigationController?.pushViewController(vc, animated: true)
        present(vc, animated: true, completion: nil)
       }
}


