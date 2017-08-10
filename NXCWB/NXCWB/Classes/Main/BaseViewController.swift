//
//  BaseViewController.swift
//  NXCWB
//
//  Created by nxc on 17/8/10.
//  Copyright © 2017年 nxc. All rights reserved.
//

import UIKit

class BaseViewController: UITableViewController {

    lazy var visitorView: VisitorView = VisitorView.visitorView()
    
    var isLogin: Bool = false

    override func loadView() {
        isLogin ? loadView() : setUpVisitorView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNaviItem()
       
    }

   
}
extension BaseViewController {
    fileprivate func setUpVisitorView() {
        view = visitorView
        visitorView.registerBtn.addTarget(self, action: #selector(registerClick), for: .touchUpInside)
        visitorView.loginBtn.addTarget(self, action: #selector(logInClick), for: .touchUpInside)
        
    }

    fileprivate func setUpNaviItem() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "注册", style: .plain, target: self, action: #selector(registerClick))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "登录", style: .plain, target: self, action: #selector(logInClick))
    }
    
}

// MARK: - 监听事件
extension BaseViewController {
    @objc fileprivate func registerClick() {
        WBLog(message: "zhuce")
        
    }
    
    @objc fileprivate func logInClick() {
        WBLog(message: "login")
    }

}





