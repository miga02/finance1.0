//
//  LoginViewController.swift
//  finance
//
//  Created by roya on 2019/1/22.
//  Copyright © 2019年 EmrahKorkmaz. All rights reserved.
//

import UIKit
import SnapKit
class LoginViewController: UIViewController{
    lazy var vLogin: UIView = {
        let mainSize = UIScreen.main.bounds.size
        let view:UIView = UIView(frame:CGRect(x:0, y:0,width: mainSize.width, height:55))
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.backgroundColor = UIColor.white
        return view
    }()
    
    lazy var line: UIView = {
        let mainSize = UIScreen.main.bounds.size
        let view:UIView = UIView(frame:CGRect(x:20, y:80,width: mainSize.width-40, height:0.5))
        view.backgroundColor = UIColor(red: 212/255, green: 212/255, blue: 212/255, alpha: 1)
        return view
    }()
    lazy var line1: UIView = {
        let mainSize = UIScreen.main.bounds.size
        let view:UIView = UIView(frame:CGRect(x:20, y:140,width: mainSize.width-40, height:0.5))
        view.backgroundColor = UIColor(red: 212/255, green: 212/255, blue: 212/255, alpha: 1)
        return view
    }()
    lazy var msgImageView: UIImageView = {
        let imageView:UIImageView = UIImageView(frame: CGRect(x:0, y:0, width:100, height:100))
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 5
        imageView.image = UIImage.init(named: "AppIcon")
        return imageView
    }()
    
    
    lazy var txtUser: UITextField = {
        let view:UITextField = UITextField(frame:CGRect(x:20, y:30,width: self.view.frame.size.width - 40, height:45))
        view.delegate = self as? UITextFieldDelegate
        view.leftView = UIView(frame:CGRect(x:0, y:0, width: 44, height:44))
        view.leftViewMode = UITextFieldViewMode.always
        view.isSecureTextEntry = true
        view.isUserInteractionEnabled = true
        view.tintColor = UIColor(red: 71/255, green: 150/255, blue: 252/255, alpha: 1)
        return view
    }()
    
    //用户名输入框左侧图标
    lazy var imgUser: UIImageView = {
        let imageView:UIImageView = UIImageView(frame: CGRect(x:11, y:11, width:22, height:22))
        imageView.image = UIImage.init(named: "login_user")
        return imageView
    }()
  
    
    lazy var txtPwd: UITextField = {
        let view:UITextField = UITextField(frame:CGRect(x:20, y:90,width: self.view.frame.size.width - 40, height:45))
        view.delegate = self as? UITextFieldDelegate
        view.leftView = UIView(frame:CGRect(x:0, y:0, width: 44, height:44))
        view.leftViewMode = UITextFieldViewMode.always
        view.isSecureTextEntry = true
        view.isUserInteractionEnabled = true
        view.tintColor = UIColor(red: 71/255, green: 150/255, blue: 252/255, alpha: 1)
        return view
    }()
   //密码输入框左侧图标
    lazy var imgPwd: UIImageView = {
        let imageView:UIImageView = UIImageView(frame: CGRect(x:11, y:11, width:22, height:22))
        imageView.image = UIImage.init(named: "login_psd")
        return imageView
    }()
    
    lazy var login_btn: UIButton = {
        let label:UIButton = UIButton()
        label.titleLabel?.font = UIFont.init(name: "Avenir-Light", size: 16)
        label.titleLabel?.text = "登陆"
        label.layer.cornerRadius = 2
        label.titleLabel?.textAlignment = .center
        label.backgroundColor = UIColor(red: 71/255, green: 150/255, blue: 252/255, alpha: 1)
        label.titleLabel?.textColor = UIColor.white
        return label
    }()
    lazy var forgot_pass_btn: UIButton = {
        let label:UIButton = UIButton()
        label.titleLabel?.font = UIFont.init(name: "Avenir-Light", size: 14)
        label.titleLabel?.textAlignment = .right
        label.backgroundColor = UIColor.white
        label.titleLabel?.textColor = UIColor(red: 71/255, green: 150/255, blue: 252/255, alpha: 1)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        self.setupNaviBar()
        login_btn.addTarget(self, action: #selector(Login), for: UIControlEvents.touchUpInside)
        forgot_pass_btn.addTarget(self, action: #selector(ForgetPass), for: UIControlEvents.touchUpInside)
    }
    func setupNaviBar() {
         self.view.addSubview(msgImageView)
         //self.view.addSubview(vLogin)
         txtPwd.leftView!.addSubview(imgPwd)
         txtUser.leftView!.addSubview(imgUser)
          self.view.addSubview(txtPwd)
          self.view.addSubview(line)
          self.view.addSubview(txtUser)
          self.view.addSubview(line1)
          self.view.addSubview(forgot_pass_btn)
          self.view.addSubview(login_btn)
        login_btn.setTitle("登陆", for: .normal)
        forgot_pass_btn.setTitle("忘记密码？", for: .normal)
        forgot_pass_btn.setTitleColor(UIColor(red: 71/255, green: 150/255, blue: 252/255, alpha: 1), for: .normal)
        forgot_pass_btn.titleLabel?.textAlignment = .right
         msgImageView.snp.makeConstraints({ (make) in
            make.height.equalTo(100)
            make.width.equalTo(100)
            make.centerX.equalTo(view.snp.centerX)
            make.top.equalTo(view.snp.top).offset(140)
         })
//        vLogin.snp.makeConstraints({ (make) in
//            make.top.equalTo(msgImageView.snp.bottom).offset(80)
//        })
        txtPwd.snp.makeConstraints({ (make) in
             make.centerX.equalTo(view.snp.centerX)
             make.centerY.equalTo(view.snp.centerY)
            make.left.equalTo(view.snp.left).offset(20)
            make.right.equalTo(view.snp.right).offset(-20)
        })
        txtUser.snp.makeConstraints({ (make) in
            make.centerX.equalTo(view.snp.centerX)
            make.bottom.equalTo(txtPwd.snp.top).offset(-30)
            make.left.equalTo(view.snp.left).offset(20)
            make.right.equalTo(view.snp.right).offset(-20)
        })
        line.snp.makeConstraints({ (make) in
            make.height.equalTo(0.5)
            make.top.equalTo(txtUser.snp.bottom).offset(10)
            make.left.equalTo(view.snp.left).offset(20)
            make.right.equalTo(view.snp.right).offset(-20)
        })
        line1.snp.makeConstraints({ (make) in
            make.top.equalTo(txtPwd.snp.bottom).offset(10)
            make.height.equalTo(0.5)
            make.left.equalTo(view.snp.left).offset(20)
            make.right.equalTo(view.snp.right).offset(-20)
        })
        forgot_pass_btn.snp.makeConstraints({ (make) in
            make.height.equalTo(50)
            make.top.equalTo(txtPwd.snp.bottom).offset(15)
            make.right.equalTo(view.snp.right).offset(-20)
        })
        
        login_btn.snp.makeConstraints({ (make) in
            make.height.equalTo(50)
            make.top.equalTo(line1.snp.bottom).offset(50)
            make.left.equalTo(view.snp.left).offset(20)
            make.right.equalTo(view.snp.right).offset(-20)
        })
    }
    @objc func Login() {
    
    }
    
    @objc func ForgetPass() {
        
    }
    //返回按钮事件
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   @objc func backButton(){
        self.navigationController?.popToRootViewController(animated: true);
    }
    
    //返回按钮点击响应
    @objc func backToPrevious(){
        self.navigationController!.popViewController(animated: true)
    }
}
