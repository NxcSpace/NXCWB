//
//  MainViewController.swift
//  NXCWB
//
//  Created by nxc on 17/8/2.
//  Copyright © 2017年 nxc. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    fileprivate lazy var composeBtn: UIButton  = UIButton(imageName: "tabbar_compose_icon_add", bgImageName: "tabbar_compose_button")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addChildViewController(HomeViewController(), "微博", "tabbar_home")
        addChildViewController(MessageViewController(), "消息", "tabbar_message_center")
        addChildViewController(ViewController(), "", "")
        addChildViewController(DiscoverViewController(), "发现", "tabbar_discover")
        addChildViewController(ProfileViewController(), "我", "tabbar_profile")
        
        setUpComposeBtn()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let item = tabBar.items![2]
        item.isEnabled = false
    }
}

// MARK: - ui界面
extension MainViewController {
    fileprivate func setUpComposeBtn() {
        tabBar.addSubview(composeBtn)
        composeBtn.center = CGPoint(x: tabBar.center.x, y: tabBar.bounds.height * 0.5)
        
        composeBtn.addTarget(self, action: #selector(composeBtnClick), for: .touchUpInside)
    }

    //swift 方法的重载
    //方法的重载:方法名称相同,参数不同 1,个数不同 2,参数类型
    //private 只能在本文件访问,不能在别的文件中访问
    fileprivate func addChildViewController(_ childController: UIViewController, _ title: String, _ image: String) {
        
        //1.设置字控制器的属性
        childController.title = title
        childController.tabBarItem.image = UIImage(named: image)
        childController.tabBarItem.selectedImage = UIImage(named: image + "_highlighted")
        
        //2,用navi控制器包裹
        let navi: UINavigationController = UINavigationController(rootViewController: childController)
        
        //3.添加控制器
        addChildViewController(navi)
        
    }
    
    
}
// MARK: - 时间监听
extension MainViewController {
   @objc fileprivate func composeBtnClick() {
    WBLog(message: "send")
    }

}

