//
//  UIBarButton-Extension.swift
//  NXCWB
//
//  Created by nxc on 17/8/12.
//  Copyright © 2017年 nxc. All rights reserved.
//

import Foundation
import UIKit

extension UIBarButtonItem {

    convenience init(imageName: String) {
        self.init()
        
        let barBtn = UIButton()
        barBtn.setImage(UIImage(named: imageName) , for: .normal)
        barBtn.setImage(UIImage(named: imageName + "_highlighted"), for: .highlighted)
        barBtn.sizeToFit()
        
        self.customView = barBtn
        
    }
    
    

}
