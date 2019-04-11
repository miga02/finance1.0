//
//  UINavigationController.swift
//  finance
//
//  Created by roya on 2019/1/30.
//  Copyright © 2019年 EmrahKorkmaz. All rights reserved.
//

extension UINavigationController: UINavigationBarDelegate {
    public func navigationBar(_ navigationBar: UINavigationBar, didPop item: UINavigationItem) -> Bool {
        //获取导航栏中所有控制器
        let vcArray = self.viewControllers
        //安全保护
        guard vcArray.last != nil else{return false}
        //根据当前控制器，控制器顺序: ViewController -> SecondViewController ->ThirdViewController
        switch vcArray.last! {
        case is SecondViewController:
            return true
        case is ThirdViewController:
            //查找对应的需要跳转的控制器
            for one in vcArray where type(of: one) == ViewController.self {
                self.popToViewController(one, animated: true)
                return false
            }
            //未找到指定跳转控制器则直接返回
            return true
        default:
            return true
        }
    }
}
