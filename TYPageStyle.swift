//
//  TYPageStyle.swift
//  iCard
//
//  Created by roya on 2019/1/7.
//  Copyright © 2019年 EmrahKorkmaz. All rights reserved.
//


import UIKit

enum LabelLayout {
    case scroll   //滚动
    case divide   //平分
    case center   //居中
}

class TYPageStyle {
    
    var labelHeight:CGFloat = 80          //标签高度
    var labelMargin:CGFloat = 10            //标签间隔
    var labelFont:CGFloat = 15              //标签字体大小
    var labelLayout:LabelLayout = .divide   //默认可以滚动
    var selectColor:UIColor = UIColor(red: 71/255, green: 160/255, blue: 252/255, alpha: 1)  //字体颜色必须为rgb格式
    var normalColor:UIColor = UIColor(r: 0, g: 0, b: 0)    //字体颜色必须为rgb格式
    var isShowLabelScale:Bool = true        //是否显示文字动画
    
    var isShowBottomLine:Bool = true        //是否显示底部的线
    var bottomLineColor:UIColor = UIColor(red: 71/255, green: 160/255, blue: 252/255, alpha: 1)
    var bottomAlginLabel:Bool = true        //bottomline跟随文字标签宽度  默认跟随label的宽度 false跟随labelText的宽度
}
