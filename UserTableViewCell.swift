//
//  UserTableViewCell.swift
//  finance
//
//  Created by roya on 2019/1/22.
//  Copyright © 2019年 EmrahKorkmaz. All rights reserved.
//

import UIKit

@objc protocol UserCellDelegate {
    @objc optional func jumpToUserInfoVC()
    @objc optional func editUserName(userName:(String)->())
}

class UserTableViewCell: UITableViewCell {
   lazy var company_name: UILabel = {
        let label:UILabel = UILabel()
        label.font = UIFont.init(name: "Avenir-Light", size: 16)
        label.text = "宁波**网络科技有限公司"
        label.textAlignment = .center
        label.textColor = UIColor.black
        return label
    }()
    lazy var time: UILabel = {
        let label:UILabel = UILabel()
        label.font = UIFont.init(name: "Avenir-Light", size: 16)
        label.text = "鄞州区"
        label.textAlignment = .center
        label.textColor = UIColor.black
        return label
    }()
    
    lazy var risk_level: UILabel = {
        let label:UILabel = UILabel()
        label.font = UIFont.init(name: "Avenir-Light", size: 16)
        label.text = "高风险"
        label.textAlignment = .center
        label.textColor = UIColor.black
        return label
    }()
    
    var userImageView:UIImageView!;
    var nameLabel:UILabel!;
    var directionsLabel:UILabel!;
    var delegate:UserCellDelegate?;
    var zhezhi:String?;
    override func awakeFromNib() {
        super.awakeFromNib()
     
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    internal func initUserCellDelegate(delegate: UserCellDelegate){
        self.delegate = delegate
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.initCell()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initCell(){
          contentView.addSubview(self.company_name);
          contentView.addSubview(self.time);
          contentView.addSubview(self.risk_level);
          contentView.snp.makeConstraints({ (make) in
            make.height.equalTo(60)
          })
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
    func userClick(){
        self.delegate?.jumpToUserInfoVC!()
    }
}
