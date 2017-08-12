//
//  VisitorView.swift
//  NXCWB
//
//  Created by nxc on 17/8/10.
//  Copyright © 2017年 nxc. All rights reserved.
//

import UIKit

class VisitorView: UIView {

    @IBOutlet weak var rotationView: UIImageView!
    
    @IBOutlet weak var iconView: UIImageView!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var registerBtn: UIButton!
    
    @IBOutlet weak var loginBtn: UIButton!
    
    class func visitorView() -> VisitorView {
        return Bundle.main.loadNibNamed("VisitorView", owner: nil, options: nil)?.first as! VisitorView
    }

    // MARK:- 自定义函数
    func setupVisitorViewInfo(iconName : String, title : String) {
        iconView.image = UIImage(named: iconName)
        tipLabel.text = title
        rotationView.isHidden = true
    }
    
    // MARK: - 转动方法
    
    func addRotationAnim() {
        //1.初始化动画
        let anim = CABasicAnimation(keyPath: "transform.rotation.z")
        //2.设置动画的基本参数
        anim.duration = 4
        anim.repeatCount = MAXFLOAT
        anim.fromValue = 0
        anim.toValue = M_PI * 2
        
        anim.isRemovedOnCompletion = false
        
       rotationView.layer.add(anim, forKey: "rotation")
        
    
    }
    
}
