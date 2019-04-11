

import UIKit
import SnapKit

class MainViewController: UIViewController{
    fileprivate func initcard(){
        let card1: iCreditCard = iCreditCard(cardStyleWithBackgroundColor: .leftcard, withCardColors: .blueway, pinIcon: .chip2, creditIcons: .masterCard)
        let card2: iCreditCard = iCreditCard(cardStyleWithBackgroundColor: .rightcard, withCardColors: .greenway, pinIcon: .chip1, creditIcons: .cirrusIcon)
    
        let card3: iCreditCard = iCreditCard(cardStyleWithBackgroundColor: .yujingcard, withCardColors: .greenway, pinIcon: .chip3, creditIcons: .cirrusIcon)
        
        let card4: iCreditCard = iCreditCard(cardStyleWithBackgroundColor: .yujingcard, withCardColors: .greenway, pinIcon: .chip3, creditIcons: .cirrusIcon)
        
        let card5: iCreditCard = iCreditCard(cardStyleWithBackgroundColor: .yujingcard, withCardColors: .greenway, pinIcon: .chip3, creditIcons: .cirrusIcon)
        
        view.addSubview(card1)
        view.addSubview(card2)
        view.addSubview(card3)
         view.addSubview(card4)
         view.addSubview(card5)
        
        card1.snp.makeConstraints({ (make) in
            make.height.equalTo(80)
            make.width.equalTo(card2)
            make.top.equalTo(view.snp.top).offset(50)
            make.left.equalTo(view.snp.left).offset(10)
            make.right.equalTo(card2.snp.left).offset(-10)
        })
        
        card2.snp.makeConstraints({ (make) in
            make.height.equalTo(80)
            make.size.equalTo(card1)
            make.top.equalTo(view.snp.top).offset(50)
            make.right.equalTo(view.snp.right).offset(-10)
          //  make.centerX.equalTo(view)
        })
        
        card3.snp.makeConstraints({ (make) in
            make.height.equalTo(200)
            make.top.equalTo(card2.snp.bottom).offset(5)
            make.left.equalTo(view.snp.left).offset(10)
            make.right.equalTo(view.snp.right).offset(-10)
//            make.centerX.equalTo(view)
        })
        card4.snp.makeConstraints({ (make) in
            make.height.equalTo(260)
            make.top.equalTo(card3.snp.bottom).offset(5)
            make.left.equalTo(view.snp.left).offset(10)
            make.right.equalTo(view.snp.right).offset(-10)
            //            make.centerX.equalTo(view)
        })
        card5.snp.makeConstraints({ (make) in
            make.height.equalTo(300)
            make.top.equalTo(card4.snp.bottom).offset(5)
            make.left.equalTo(view.snp.left).offset(10)
            make.right.equalTo(view.snp.right).offset(-10)
            //            make.centerX.equalTo(view)
        })
        
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.view.backgroundColor=UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        initcard()
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
