//
//  UIButton-Extension.swift
//  NXCWB
//
//  Created by nxc on 17/8/10.
//  Copyright © 2017年 nxc. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {

    //便利构造函数
    //1.通常写在 extension中
    //2. 明确调用  self.init()
    //3. init 前加 convenience
    
    convenience init(imageName: String, bgImageName:String) {
        self.init()
        setImage(UIImage(named: imageName), for: .normal)
        setBackgroundImage(UIImage(named: bgImageName), for: .normal)
        setBackgroundImage(UIImage(named: bgImageName + "_highlighted"), for: .highlighted)
        setImage(UIImage(named: imageName + "_highlighted"), for: .highlighted)
        sizeToFit()
    }
}

