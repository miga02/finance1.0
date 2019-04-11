//
//  MornitorController.swift
//  finance
//
//  Created by roya on 2019/1/8.
//  Copyright © 2019年 EmrahKorkmaz. All rights reserved.
//

import UIKit

class MornitorController: UITableViewController {
    
    var tableview : UITableView?
//    var refreshControl = UIRefreshControl()
    let cell = "cell"
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        //CreatUi()
    }
    
    func CreatUi(){
        self.tableview=UITableView(frame:self.view.frame,style:UITableViewStyle.plain)
        tableview?.separatorStyle = .singleLine
        tableview?.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        tableview?.delegate = self
        tableview?.dataSource = self
        tableview?.tableFooterView = UIView()
//      tableview?.refreshControl = refreshControl
        tableview?.register(UserTableViewCell.self, forCellReuseIdentifier: "WarningDetail")
//        refreshControl.backgroundColor = UIColor.white
////        refreshControl.attributedTitle = NSAttributedString(string: "刷新一下：\(NSDate())", attributes:
//        refreshControl.attributedTitle = NSAttributedString(string: "", attributes: [NSForegroundColorAttributeName:UIColor.black])//设置文字颜色
//        refreshControl.tintColor = UIColor(red: 204/255, green: 204/255, blue: 204/255, alpha: 1)//刷新图标的颜色
//        refreshControl.tintAdjustmentMode = .dimmed //色彩调整模式
//        refreshControl.addTarget(self, action: #selector(addcount), for: .valueChanged)
//  view.addSubview(card1)
        view.addSubview(tableview!)
        
        
//        card1.snp.makeConstraints({ (make) in
//            make.height.equalTo(50)
//        })
    }
    func addcount(){
        tableview?.reloadData()
       // refreshControl.endRefreshing()
    }
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .default
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 40
    }
    private func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath){
        let vc = WarningDetailViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        
//        let sb = UIStoryboard(name:"mornitorDetail",bundle: Bundle.main)
//
//        let vc = sb.instantiateViewController(withIdentifier: "mornitorDetail")
//
//        self.present(vc, animated: true, completion: nil)
   }
    
    override  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UserTableViewCell(style:UITableViewCellStyle.default, reuseIdentifier: "WarningDetail")
        cell.initCell()
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          let vc = WarningDetailViewController()
          present(vc, animated: true, completion: nil)
        
//        let sb = UIStoryboard(name: "WarningDetail", bundle: nil)
//        let vc = sb.instantiateViewController(withIdentifier: "MornitorDetailTableViewController")
//        self.navigationController!.pushViewController(vc, animated: true)
//        performSegue(withIdentifier: "WarningDetail", sender: nil)
    }
   override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
 
}
