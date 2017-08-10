//
//  AppDelegate.swift
//  NXCWB
//
//  Created by nxc on 17/8/2.
//  Copyright © 2017年 nxc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //设置全局颜色
        UITabBar.appearance().tintColor = UIColor.black
        UINavigationBar.appearance().tintColor = UIColor.orange
        
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = MainViewController()
        WBLog(message: "DEBUG")
        return true
    }

}

func WBLog<T>(message: T, file: String = #file, line: Int = #line) {
    let fileName = (file as NSString).lastPathComponent
    #if DEBUG
    print("\(fileName)-\(line):\(message)")
    #endif
    
}
