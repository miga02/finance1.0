

public enum AAChartAnimationType:String {
    case EaseInQuad     = "easeInQuad"
    case EaseOutQuad    = "easeOutQuad"
    case EaseInOutQuad  = "easeInOutQuad"
    case EaseInCubic    = "easeInCubic"
    case EaseOutCubic   = "easeOutCubic"
    case EaseInOutCubic = "easeInOutCubic"
    case EaseInQuart    = "easeInQuart"
    case EaseOutQuart   = "easeOutQuart"
    case EaseInOutQuart = "easeInOutQuart"
    case EaseInQuint    = "easeInQuint"
    case EaseOutQuint   = "easeOutQuint"
    case EaseInOutQuint = "easeInOutQuint"
    case EaseInSine     = "easeInSine"
    case EaseOutSine    = "easeOutSine"
    case EaseInOutSine  = "easeInOutSine"
    case EaseInExpo     = "easeInExpo"
    case EaseOutExpo    = "easeOutExpo"
    case EaseInOutExpo  = "easeInOutExpo"
    case EaseInCirc     = "easeInCirc"
    case EaseOutCirc    = "easeOutCirc"
    case EaseInOutCirc  = "easeInOutCirc"
    case EaseOutBounce  = "easeOutBounce"
    case EaseInBack     = "easeInBack"
    case EaseOutBack    = "easeOutBack"
    case EaseInOutBack  = "easeInOutBack"
    case Elastic        = "elastic"
    case SwingFromTo    = "swingFromTo"
    case SwingFrom      = "swingFrom"
    case SwingTo        = "swingTo"
    case Bounce         = "bounce"
    case BouncePast     = "bouncePast"
    case EaseFromTo     = "easeFromTo"
    case EaseFrom       = "easeFrom"
    case EaseTo         = "easeTo"
}

public enum AAChartType:String {
    case Column          = "column"
    case Bar             = "bar"
    case Area            = "area"
    case Areaspline      = "areaspline"
    case Line            = "line"
    case Spline          = "spline"
    case Scatter         = "scatter"
    case Pie             = "pie"
    case Bubble          = "bubble"
    case Pyramid         = "pyramid"
    case Funnel          = "funnel"
    case Columnrange     = "columnrange"
    case Arearange       = "arearange"
    case Areasplinerange = "areasplinerange"
    case Boxplot         = "boxplot"
    case Waterfall       = "waterfall"
    case Polygon         = "polygon"
}

public enum AAChartSubtitleAlignType:String {
    case Left   = "left"
    case Center = "center"
    case Right  = "right"
}

public enum AAChartZoomType:String {
    case None = "none"
    case X    = "x"
    case Y    = "y"
    case XY   = "xy"
}

public enum AAChartStackingType:String {
    case False   = ""
    case Normal  = "normal"
    case Percent = "percent"
}

public enum AAChartSymbolType:String {
    case Circle        = "circle"
    case Square        = "square"
    case Diamond       = "diamond"
    case Triangle      = "triangle"
    case Triangle_down = "triangle-down"
}

public enum AAChartSymbolStyleType:String {
    case Normal      = "normal"
    case InnerBlank  = "innerBlank"
    case BorderBlank = "borderBlank"
}

public enum AAchartLegendlLayoutType:String {
    case Horizontal = "horizontal"
    case Vertical   = "vertical"
}

public enum AAChartLegendAlignType:String {
    case Left   = "left"
    case Center = "center"
    case Right  = "right"
}

public enum AAChartLegendVerticalAlignType:String {
    case Top    = "top"
    case Middle = "middle"
    case Bottom = "bottom"
}

public enum AALineDashSyleType:String {
    case Solid           = "Solid"
    case ShortDash       = "ShortDash"
    case ShortDot        = "ShortDot"
    case ShortDashDot    = "ShortDashDot"
    case ShortDashDotDot = "ShortDashDotDot"
    case Dot             = "Dot"
    case Dash            = "Dash"
    case LongDash        = "LongDash"
    case DashDot         = "DashDot"
    case LongDashDot     = "LongDashDot"
    case LongDashDotDot  = "LongDashDotDot"
}


public class AAChartModel:AASerializable {
    private var animationType:String?       //动画类型
    private var animationDuration:Int?      //动画时间
    private var title:String?               //标题内容
    private var subtitle:String?            //副标题内容
    private var chartType:String?           //图表类型
    private var stacking:String?            //堆积样式
    private var symbol:String?              //折线曲线连接点的类型："circle", "square", "diamond", "triangle","triangle-down"，默认是"circle"
    private var symbolStyle:String?         //折线或者曲线的连接点是否为空心的
    private var zoomType:String?            //缩放类型 AAChartZoomTypeX表示可沿着 x 轴进行手势缩放
    private var inverted:Bool?              //x 轴是否翻转(垂直)
    private var xAxisReversed:Bool?         //x 轴翻转
    private var yAxisReversed:Bool?         //y 轴翻转
    private var gradientColorEnable:Bool?   //是否要为渐变色
    private var polar:Bool?                 //是否极化图形(变为雷达图)
    private var marginLeft:Float?
    private var marginRight:Float?
    private var dataLabelEnabled:Bool?      //是否显示数据
    private var xAxisLabelsEnabled:Bool?    //x轴是否显示数据
    private var categories:Array<Any>?      //x轴是否显示数据
    private var xAxisGridLineWidth:Float?   //x轴网格线的宽度
    private var xAxisVisible:Bool?          //x轴是否显示
    private var yAxisVisible:Bool?          //y轴是否显示
    private var yAxisLabelsEnabled:Bool?    //y轴是否显示数据
    private var yAxisTitle:String?          //y轴标题
    private var yAxisLineWidth:Float?       //y轴轴线的宽度
    private var yAxisGridLineWidth:Float?   //y轴网格线的宽度
    private var tooltipEnabled:Bool?        //是否显示浮动提示框(默认显示)
    private var tooltipValueSuffix:String?  //浮动提示框单位后缀
    private var tooltipCrosshairs:Bool?     //是否显示准星线(默认显示)
    private var colorsTheme:Array<Any>?     //图表主题颜色数组
    private var series:Array<Dictionary<String, Any>>?  //图表的数据数组
    private var legendEnabled:Bool?         //是否显示图例
    private var legendLayout:String?        //图例数据项的布局。布局类型： "horizontal" 或 "vertical" 即水平布局和垂直布局 默认是：horizontal.
    private var legendAlign:String?         //设定图例在图表区中的水平对齐方式，合法值有left，center 和 right。
    private var legendVerticalAlign:String? //设定图例在图表区中的垂直对齐方式，合法值有 top，middle 和 bottom。垂直位置可以通过 y 选项做进一步设定。
    private var backgroundColor:String?     //图表背景色
    private var borderRadius:Int?           //柱状图长条图头部圆角半径(可用于设置头部的形状,仅对条形图,柱状图有效)
    private var markerRadius:Int?           //折线连接点的半径长度
    
    
    public func animationType(_ prop: AAChartAnimationType) -> AAChartModel {
        self.animationType = prop.rawValue
        return self
    }
    
    public func animationDuration(_ prop: Int) -> AAChartModel {
        self.animationDuration = prop
        return self
    }
    
    public func title(_ prop: String) -> AAChartModel {
        self.title = prop
        return self
    }
    
    public func subtitle(_ prop: String) -> AAChartModel {
        self.subtitle = prop
        return self
    }
    
    public func chartType(_ prop: AAChartType) -> AAChartModel {
        self.chartType = prop.rawValue
        return self
    }
    
    public func stacking(_ prop: AAChartStackingType) -> AAChartModel {
        self.stacking = prop.rawValue
        return self
    }
    
    public func symbol(_ prop: AAChartSymbolType) -> AAChartModel {
        self.symbol = prop.rawValue
        return self
    }
    
    public func zoomType(_ prop: AAChartZoomType) -> AAChartModel {
        self.zoomType = prop.rawValue
        return self
    }
    
    public func inverted(_ prop: Bool) -> AAChartModel {
        self.inverted = prop
        return self
    }
    
    public func symbolStyle(_ prop: AAChartSymbolStyleType) -> AAChartModel {
        self.symbolStyle = prop.rawValue
        return self
    }
    
    public func xAxisReversed(_ prop: Bool) -> AAChartModel {
        self.xAxisReversed = prop
        return self
    }
    
    public func yAxisReversed(_ prop: Bool) -> AAChartModel {
        self.yAxisReversed = prop
        return self
    }
    
    public func tooltipEnabled(_ prop:Bool) -> AAChartModel {
        self.tooltipEnabled = prop
        return self
    }
    
    public func tooltipValueSuffix(_ prop:String) -> AAChartModel {
        self.tooltipValueSuffix = prop
        return self
    }
    
    public func tooltipCrosshairs(_ prop: Bool) -> AAChartModel {
        self.tooltipCrosshairs = prop
        return self
    }
    
    public func gradientColorEnable(_ prop: Bool) -> AAChartModel {
        self.gradientColorEnable = prop
        return self
    }
    
    public func polar(_ prop: Bool) -> AAChartModel {
        self.polar = prop
        return self
    }
    
    public func marginLeft(_ prop: Float) -> AAChartModel {
        self.marginLeft = prop
        return self
    }
    
    public func marginRight(_ prop: Float) -> AAChartModel {
        self.marginRight = prop
        return self
    }
    
    public func dataLabelEnabled(_ prop: Bool) -> AAChartModel {
        self.dataLabelEnabled = prop
        return self
    }
    
    public func xAxisLabelsEnabled(_ prop: Bool) -> AAChartModel {
        self.xAxisLabelsEnabled = prop
        return self
    }
    
    public func categories(_ prop: Array<Any>) -> AAChartModel {
        self.categories = prop
        return self
    }
    
    public func xAxisGridLineWidth(_ prop: Float) -> AAChartModel {
        self.xAxisGridLineWidth = prop
        return self
    }
    
    public func xAxisVisible(_ prop: Bool) -> AAChartModel {
        self.xAxisVisible = prop
        return self
    }
    
    public func yAxisVisible(_ prop: Bool) -> AAChartModel {
        self.yAxisVisible = prop
        return self
    }
    
    public func yAxisLabelsEnabled(_ prop: Bool) -> AAChartModel {
        self.yAxisLabelsEnabled = prop
        return self
    }
    
    public func yAxisTitle(_ prop: String) -> AAChartModel {
        self.yAxisTitle = prop
        return self
    }
    
    public func yAxisGridLineWidth(_ prop: Float) -> AAChartModel {
        self.yAxisGridLineWidth = prop
        return self
    }
    
    public func colorsTheme(_ prop: Array<Any>) -> AAChartModel {
        self.colorsTheme = prop
        return self
    }
    
    public func series(_ prop: Array<Dictionary<String, Any>>) -> AAChartModel {
        self.series = prop
        return self
    }
    
    public func legendEnabled(_ prop: Bool) -> AAChartModel {
        self.legendEnabled = prop
        return self
    }
    
    public func legendLayout(_ prop: AAchartLegendlLayoutType) -> AAChartModel {
        self.legendLayout = prop.rawValue
        return self
    }
    
    public func legendAlign(_ prop: AAChartLegendAlignType) -> AAChartModel {
        self.legendAlign = prop.rawValue
        return self
    }
    
    public func legendVerticalAlign(_ prop: AAChartLegendVerticalAlignType) -> AAChartModel {
        self.legendAlign = prop.rawValue
        return self
    }
    
    public func backgroundColor(_ prop: String) -> AAChartModel {
        self.backgroundColor = prop
        return self
    }
    
    public func borderRadius(_ prop: Int) -> AAChartModel {
        self.borderRadius = prop
        return self
    }
    
    public func markerRadius(_ prop: Int) -> AAChartModel {
        self.markerRadius = prop
        return self
    }
    
    
    public  init() {
        self.backgroundColor     = "#ffffff"
        self.animationDuration   = 800//以毫秒为单位
        self.chartType           = AAChartType.Column.rawValue
        self.inverted            = false
        self.stacking            = AAChartStackingType.False.rawValue
        self.xAxisReversed       = false
        self.yAxisReversed       = false
        self.zoomType            = AAChartZoomType.None.rawValue//默认禁用手势缩放
        self.colorsTheme         = ["#1e90ff","#ef476f","#ffd066","#04d69f","#25547c",]
        self.gradientColorEnable = false
        self.polar               = false
        self.dataLabelEnabled    = true
        self.tooltipEnabled      = true
        self.tooltipCrosshairs   = true
        self.xAxisLabelsEnabled  = true
        self.xAxisVisible        = true  // X 轴默认可见
        self.yAxisVisible        = true  // Y 轴默认可见
        self.yAxisLabelsEnabled  = true
        self.yAxisLineWidth      = 0
        self.yAxisGridLineWidth  = 0.6
        self.legendEnabled       = true
        self.legendLayout        = AAchartLegendlLayoutType.Horizontal.rawValue
        self.legendAlign         = AAChartLegendAlignType.Center.rawValue
        self.legendVerticalAlign = AAChartLegendVerticalAlignType.Bottom.rawValue
        self.borderRadius        = 0//柱状图长条图头部圆角半径(可用于设置头部的形状,仅对条形图,柱状图有效,设置为1000时,柱形图或者条形图头部为楔形)
        self.markerRadius        = 5//折线连接点的半径长度,设置默认值为0,这样就相当于不显示了
    }
    
    
}
