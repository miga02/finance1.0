//
//  iCreditCard.swift
//  iCard
//

import UIKit

class iCreditCard: UIView {
   
    lazy var contentView: UIView = {
        let view:UIView = UIView()
        view.backgroundColor = UIColor.clear
        return view
    }()
    
    lazy var titleleftcard: UILabel = {
        let label:UILabel = UILabel()
        label.font = UIFont.init(name: "Avenir-Light", size: 16)
        label.text = "工商机构数量"
        label.textAlignment = .center
        label.textColor = UIColor.black
        return label
    }()
    lazy var titlerightcard: UILabel = {
        let label:UILabel = UILabel()
        label.text = "类金融机构数量"
        label.textAlignment = .center
        label.textColor = UIColor.black
        label.font = UIFont.init(name: "Avenir-Light", size:16)
        return label
    }()
    
    lazy var GSNumbers: UILabel = {
        let label:UILabel = UILabel()
        label.text = "439246"
        label.textColor = UIColor(red: 71/255, green: 160/255, blue: 252/255, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont.init(name: "Avenir-Light", size: 20)
        return label
    }()
    
    
    lazy var LJRNumbers: UILabel = {
        let label:UILabel = UILabel()
        label.text = "22761"
        label.textColor = UIColor(red: 71/255, green: 160/255, blue: 252/255, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont.init(name: "Avenir-Light", size: 20)
        return label
    }()
    
    lazy var JiaLabel: UILabel = {
        let label:UILabel = UILabel()
        label.text = "家"
        label.textColor = UIColor(red: 153/255, green: 153/255, blue: 153/255, alpha: 1)
        label.font = UIFont.init(name: "Avenir-Light", size: 14)
        label.numberOfLines = 0
        return label
    }()
    lazy var topSeparator: UIView = {
        let view:UIView = UIView()
        view.backgroundColor = UIColor.white
        return view
    }()
    
    
    lazy var backgroundImageView: UIImageView = {
        let imageView:UIImageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 8
        return imageView
    }()
    

    
    lazy var cardBrandImageViewBottom: UIImageView = {
        let imageView:UIImageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 5
        imageView.image = UIImage.init(named: "visaIcon")
        return imageView
    }()
    
    
    
    convenience init(){
        self.init(cardStyleWithBackgroundColor: .leftcard, withCardColors: .yelloway, pinIcon: .chip1, creditIcons: .cirrusIcon)
    }
    
    convenience init(cardColors: cardColors){
        self.init(cardStyleWithBackgroundColor: .rightcard, withCardColors: .yelloway, pinIcon: .chip2, creditIcons: .americanExpressIcon)
    }
    
    init(cardStyleWithBackgroundColor: cardStyle , withCardColors colors: cardColors , pinIcon: chipIcons , creditIcons: creditIcons){
        super.init(frame: CGRect())
        addItemsWithColors(cardStyleWithBackgroundColor, colors: colors, chipIcon: pinIcon, creditIcon: creditIcons)
        settingForLayout(cardStyle: cardStyleWithBackgroundColor, cardVisual: cardVisual.withBackgroundColor, withSeparator: true)
    }
    
    init(cardStyleWithBackgroundImage: cardStyle , withCardImage: UIImage?, pinIcon: chipIcons , creditIcons: creditIcons){
        super.init(frame: CGRect())
        addItemsWithImage(image: withCardImage, cardStyleWithBackgroundImage, chipIcon: pinIcon, creditIcon: creditIcons)
        settingForLayout(cardStyle: cardStyleWithBackgroundImage, cardVisual: cardVisual.withBackgroundImage, withSeparator: true)
    }
    
    
    fileprivate func addItemsWithImage(image backgroundImage: UIImage? , _ cardStyle: cardStyle, chipIcon: chipIcons , creditIcon: creditIcons){
        self.addSubview(contentView)
        self.addSubview(backgroundImageView)
        self.addSubview(titleleftcard)
        self.addSubview(titlerightcard)
        self.addSubview(JiaLabel)
        self.addSubview(GSNumbers)
        self.addSubview(LJRNumbers)
        if let image = backgroundImage{
        self.backgroundImageView.image = image
        }else{
            fillWithColor(color: cardColors.yelloway)
        }
        if cardStyle == .leftcard{
        self.addSubview(cardBrandImageViewBottom)
   //     cardBrandImageViewBottom.image = creditIconImage(creditIcon: creditIcon)
            
        }else if cardStyle == .leftcard{
          
            
        }else if cardStyle == .yujingcard{
            
            
        }else if cardStyle == .fengxiancard{
            
            
        }else if cardStyle == .yetaicard{
            
        }
        self.addSubview(topSeparator)
        
    }
    
    fileprivate func addItemsWithColors(_ cardStyle: cardStyle , colors: cardColors , chipIcon: chipIcons , creditIcon: creditIcons){
        self.addSubview(contentView)
        self.addSubview(titleleftcard)
        self.addSubview(titlerightcard)
        self.addSubview(JiaLabel)
        self.addSubview(GSNumbers)
        self.addSubview(LJRNumbers)
        if cardStyle == .leftcard{
       self.addSubview(cardBrandImageViewBottom)
  //     cardBrandImageViewBottom.image = creditIconImage(creditIcon: creditIcon)
        }else if cardStyle == .rightcard{

        }else if cardStyle == .yujingcard{
         
          
        }else if cardStyle == .fengxiancard{
         
        }else if cardStyle == .yetaicard{
          
        }
        self.addSubview(topSeparator)
        fillWithColor(color: colors)
    }
    
   
    
    
    
    fileprivate func fillWithColor(color: cardColors){
        switch color {
        case .blueway:
            self.backgroundColor = UIColor(r: 255, g: 255, b: 255, alpha: 1)
        case .yelloway:
            self.backgroundColor = UIColor(r: 255, g: 255, b: 255, alpha: 1)
        case .greenway:
            self.backgroundColor = UIColor(r: 255, g: 255, b: 255, alpha: 1)
        }
    }
    
  
    fileprivate func settingForLayout(cardStyle style: cardStyle , cardVisual : cardVisual , withSeparator: Bool){
        self.layer.cornerRadius = 8
       // self.layer.borderWidth = 2 // 边框宽度
        // 设置边框的颜色
      //  self.layer.borderColor = UIColor.blue.cgColor
      //  self.layer.borderColor = UIColor(red: 70/255, green: 157/255, blue: 248/255, alpha: 1).cgColor
//        if cardVisual == .withBackgroundImage {
//
//
//        }
           contentView.snp.makeConstraints({ (make) in
            make.left.equalTo(self.snp.left)
            make.right.equalTo(self.snp.right)
            make.top.equalTo(self.snp.top)
            make.bottom.equalTo(self.snp.bottom)
        })
        if style == .leftcard{
            GSNumbers.snp.makeConstraints({ (make) in
                make.height.equalTo(35)
                make.centerX.equalTo(contentView.snp_centerX)
                make.bottom.equalTo(contentView.snp.bottom).offset(-5)
            })
            titleleftcard.snp.makeConstraints({ (make) in
                make.height.equalTo(35)
                make.left.equalTo(self.snp.left)
                make.bottom.equalTo(GSNumbers.snp.top).offset(0)
                make.top.equalTo(contentView.snp.top).offset(5)
                make.right.equalTo(self.snp.right)
            })
            JiaLabel.snp.makeConstraints({ (make) in
                make.height.equalTo(35)
                make.left.equalTo(GSNumbers.snp.right)
                make.bottom.equalTo(contentView.snp.bottom).offset(-5)
                make.right.equalTo(self.snp.right)
            })
       
        }else if style == .rightcard{
            LJRNumbers.snp.makeConstraints({ (make) in
                make.height.equalTo(35)
                make.centerX.equalTo(contentView.snp_centerX)
                make.bottom.equalTo(contentView.snp.bottom).offset(-5)
            })
            titlerightcard.snp.makeConstraints({ (make) in
                make.height.equalTo(35)
                make.left.equalTo(self.snp.left)
                make.bottom.equalTo(LJRNumbers.snp.top).offset(0)
                make.top.equalTo(contentView.snp.top).offset(5)
                make.right.equalTo(self.snp.right)
            })
            JiaLabel.snp.makeConstraints({ (make) in
                make.height.equalTo(35)
                make.left.equalTo(LJRNumbers.snp.right)
                make.bottom.equalTo(contentView.snp.bottom).offset(-5)
                make.right.equalTo(contentView.snp.right)
            })
            
        }else if style == .yujingcard{
                
        }else if style == .fengxiancard{
            
        }else if style == .yetaicard{
            
        }
       }
    public enum cardStyle{
        case leftcard
        case rightcard
        case yujingcard
        case fengxiancard
        case yetaicard
    }

    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
}

public enum cardColors{
    case blueway
    case yelloway
    case greenway
}

public enum cardVisual{
    case withBackgroundColor
    case withBackgroundImage
}



public enum creditIcons{
    case americanExpressIcon
    case bitcoinIcon
    case bluePayIcon
    case cirrusIcon
    case citiIcon
    case clickBank
    case cvsIcon
    case googleWalletIcon
    case hsbcIcon
    case maestroIcon
    case maestroIcon2
    case masterCard
    case masterCardMini
    case masterCardDetail
    case moneyGramIcon
    case paypalIcon
    case paypalIconSimple
    case visaIcon
    case visaIconBigger
    case visaIconText
    case wePayIcon
    case westernUnionIcon
}

public enum chipIcons{
    case chip1
    case chip2
    case chip3
}

extension UIColor{
    convenience init(r: Float, g: Float , b: Float , alpha: Int) {
        self.init(red: CGFloat(r/255), green: CGFloat(g/255), blue: CGFloat(b/255), alpha: CGFloat(alpha))
    }
}

