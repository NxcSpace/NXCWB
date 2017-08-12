//
//  HomeViewController.swift
//  NXCWB
//
//  Created by nxc on 17/8/9.
//  Copyright © 2017年 nxc. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    lazy var titleView: HomeTitleView = Bundle.main.loadNibNamed("HomeTitleView", owner: nil, options: nil)!.last as! HomeTitleView
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        visitorView.addRotationAnim()
        if !isLogin {
            setUpNaviItems()
        }
        
        
    }

}
extension HomeViewController {

    fileprivate func setUpNaviItems() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(imageName: "navigationbar_pop")
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "navigationbar_friendattention")
        titleView.frame = CGRect(x: 0, y: 0, width: 130, height: 30)
        titleView.backgroundColor = UIColor.clear
        navigationItem.titleView = titleView
    }
    
    func presentVC() {
        
    }

}








