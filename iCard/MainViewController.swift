

import UIKit
import SnapKit

class MainViewController: UIViewController ,UIScrollViewDelegate{
    
    open var chartType: AAChartType?
    open var aaChartModel: AAChartModel?
    open var aaChartView: AAChartView?
    
    open var chartType1: AAChartType?
    open var aaChartModel1: AAChartModel?
    open var aaChartView1: AAChartView?
    
    open var chartType2: AAChartType?
    open var aaChartModel2: AAChartModel?
    open var aaChartView2: AAChartView?
    
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
    
    fileprivate func initcard(){
        let card1: iCreditCard = iCreditCard(cardStyleWithBackgroundColor: .leftcard, withCardColors: .blueway, pinIcon: .chip2, creditIcons: .masterCard)
        let card2: iCreditCard = iCreditCard(cardStyleWithBackgroundColor: .rightcard, withCardColors: .greenway, pinIcon: .chip1, creditIcons: .cirrusIcon)
        scrollView.snp.makeConstraints({ (make) in
        make.edges.equalToSuperview()
        })
        self.scrollView.addSubview(card1)
        self.scrollView.addSubview(card2)
        
        setColumnChartView()
        setPieChartView()
        setHorChartView()
        
        card1.snp.makeConstraints({ (make) in
            make.height.equalTo(90)
            make.width.equalTo(card2)
            make.left.equalTo(view.snp.left).offset(10)
            make.right.equalTo(card2.snp.left).offset(-10)
        })
        card2.snp.makeConstraints({ (make) in
            make.height.equalTo(90)
            make.size.equalTo(card1)
            if #available(iOS 11.0, *) {
                make.top.equalTo(view.safeAreaInsets.top).offset(0)
            } else {
               make.top.equalTo(view.snp.top).offset(0)
            }
            make.right.equalTo(view.snp.right).offset(-10)
        })
        
        aaChartView?.snp.makeConstraints({ (make) in
            make.height.equalTo((view.frame.size.height)/3)
            make.top.equalTo(card2.snp.bottom).offset(5)
            make.left.equalTo(view.snp.left).offset(10)
            make.right.equalTo(view.snp.right).offset(-10)
//            make.centerX.equalTo(view)
        })
        aaChartView1?.snp.makeConstraints({ (make) in
            make.height.equalTo((view.frame.size.height)/3)
            make.top.equalTo(aaChartView?.snp.bottom ?? 0).offset(0)
            make.left.equalTo(view.snp.left).offset(10)
            make.right.equalTo(view.snp.right).offset(-10)
            //            make.centerX.equalTo(view)
        })
        aaChartView2?.snp.makeConstraints({ (make) in
            make.height.equalTo((view.frame.size.height)/2)
            make.top.equalTo(aaChartView1?.snp.bottom ?? 0).offset(5)
            make.left.equalTo(view.snp.left).offset(10)
            make.right.equalTo(view.snp.right).offset(-10)
            //            make.centerX.equalTo(view)
        })
        
    }
    
    func setColumnChartView() {
        aaChartView = AAChartView()
        let chartViewWidth = view.frame.size.width
        let chartViewHeight = view.frame.size.height
        aaChartView?.frame = CGRect(x: 0,
                                    y: 60,
                                    width: chartViewWidth,
                                    height: chartViewHeight / 3)
        ///AAChartViewd的内容高度(内容高度默认和 AAChartView 等高)
        aaChartView?.contentHeight = (chartViewHeight / 3)-10
        self.scrollView.addSubview(aaChartView!)
        aaChartView?.scrollEnabled = false         //禁止图表内容滚动
        aaChartView?.isClearBackgroundColor = true

        aaChartModel = AAChartModel()
            .chartType(.Column)//图形类型
            .colorsTheme(["#1e90ff","#ef476f","#ffd066","#04d69f","#25547c",])//主题颜色数组
            .title("")//图形标题
            .subtitle("")//图形副标题
            .dataLabelEnabled(false)//是否显示数字
            .tooltipValueSuffix("家")//浮动提示框单位后缀
            .animationType(.Bounce)//图形渲染动画类型为"bounce"
            .backgroundColor("#ffffff")//若要使图表背景色为透明色,可将 backgroundColor 设置为 "rgba(0,0,0,0)" 或 "rgba(0,0,0,0)". 同aaChartView?.isClearBackgroundColor = true
            .series([
                AASeriesElement()
                    .name("预警下发情况表")
                    .data([7.0, 6.9, 9.5])
                    .toDic()!,

                ])
        aaChartModel?
            .categories(["预警下发", "处置中", "处置已回执"])
            .legendEnabled(true)
            .colorsTheme(["#47A0FC"])
            .animationType(.Bounce)
            .xAxisVisible(true)
            .animationDuration(1200)
        aaChartView?.aa_drawChartWithChartModel(aaChartModel!)
    }
    
    func setPieChartView() {
        aaChartView1 = AAChartView()
        let chartViewWidth = view.frame.size.width
        let chartViewHeight = view.frame.size.height - 10
        aaChartView1?.frame = CGRect(x: 0,
                                     y: 60,
                                     width: chartViewWidth / 3,
                                     height: chartViewHeight / 3)
        aaChartView1?.contentHeight = (view.frame.size.height / 3)-10
        self.scrollView.addSubview(aaChartView1!)
        aaChartView1?.scrollEnabled = false
        
        aaChartModel1 = AAChartModel()
            .chartType(.Pie)
            .backgroundColor("#ffffff")
            .dataLabelEnabled(true)//是否直接显示扇形图数据
            .yAxisTitle("家")
            .series(
                [
                    AASeriesElement()
                        .name("")
                        .innerSize("0%")//内部圆环半径大小占比(内部圆环半径/扇形图半径),
                        .allowPointSelect(false)
                        .data([
                            ["高风险",67],
                            ["中风险",999],
                            ["低风险",83],
                    
                            ])
                        .toDic()!,
                    ]
        )
        aaChartView1?.aa_drawChartWithChartModel(aaChartModel1!)
    }
    func setHorChartView() {
        aaChartView2 = AAChartView()
        let chartViewWidth = view.frame.size.width
        let chartViewHeight = view.frame.size.height - 20
        aaChartView?.frame = CGRect(x: 0,
                                    y: 60,
                                    width: chartViewWidth / 2,
                                    height: chartViewHeight / 2 - 20)
        ///AAChartViewd的内容高度(内容高度默认和 AAChartView 等高)
        aaChartView2?.contentHeight = chartViewHeight / 2  - 20
        self.scrollView.addSubview(aaChartView2!)
        aaChartView2?.scrollEnabled = false//禁止图表内容滚动
        aaChartView2?.isClearBackgroundColor = true
        
        aaChartModel2 = AAChartModel()
            .chartType(.Bar)//图形类型
            .colorsTheme(["#1e90ff","#ef476f","#ffd066","#04d69f","#25547c",])//主题颜色数组
            .title("")//图形标题
            .subtitle("")//图形副标题
            .dataLabelEnabled(false)//是否显示数字
            .tooltipValueSuffix("")//浮动提示框单位后缀
            .animationType(.Bounce)//图形渲染动画类型为"bounce"
            .backgroundColor("#ffffff")//若要使图表背景色为透明色,可将 backgroundColor 设置为 "rgba(0,0,0,0)" 或 "rgba(0,0,0,0)". 同时确保 aaChartView?.isClearBackgroundColor = true
            .series([
                AASeriesElement()
                    .name("业态分析")
                    .data([7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6,10.0,11.0,200.0])
                    .toDic()!,
                ])
        aaChartModel2?
            .categories(["投资理财","网络借贷","私募股权投资","股权众筹","大宗商品交易","电子盘交易","保险相关类","融资性担保","第三方支付","基金销售","民办教育","农民专业合作社","融资租赁","典当","小额贷款","房地产","其他"])
            .legendEnabled(true)
            .colorsTheme(["#fe117c","#ffc069","#06caf4","#7dffc0"])
            .animationType(.Bounce)
            .animationDuration(1200)
        aaChartView2?.aa_drawChartWithChartModel(aaChartModel2!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initScrollView()
        initcard()
    }
    
    fileprivate func initScrollView(){
        let kScreenWidth = UIScreen.main.bounds.size.width
        //屏幕的高
        let kScreenHeight = UIScreen.main.bounds.size.height+300
        
        scrollView.contentSize = CGSize(width: kScreenWidth*3, height: kScreenHeight)
        //设置scrollView的偏移量(重要)
      //  scrollView.contentOffset = CGPoint(x: kScreenWidth, y: -44)
        //设置滚动条的样式
        scrollView.indicatorStyle = .white
        scrollView.showsVerticalScrollIndicator = false//垂直滚动条
        scrollView.showsHorizontalScrollIndicator = false//水平滚动条
        scrollView.isDirectionalLockEnabled = true
        // 设置是否有弹簧效果
        scrollView.bounces = false
        scrollView.scrollsToTop = false
        scrollView.isPagingEnabled = false
    
        //scrollView代理属性
        scrollView.delegate = self
        
        //设置scrollView最大最小缩放比例
        scrollView.minimumZoomScale = 1
        scrollView.maximumZoomScale = 3
        
        scrollView.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        self.view.addSubview(scrollView)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let _: CGFloat = 20
        // 如果没有导航栏，就返回状态栏的高度
    }
}
extension MainViewController{
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        UIApplication.shared.isStatusBarHidden = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIApplication.shared.isStatusBarHidden = true
    }
}

extension UIScrollView: UIGestureRecognizerDelegate {
    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        if (gestureRecognizer.state != UIGestureRecognizerState.possible) {
            return true
        }
        return false
    }
}

