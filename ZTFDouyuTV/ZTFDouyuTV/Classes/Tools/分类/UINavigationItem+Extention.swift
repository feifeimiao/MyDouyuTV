//
//  UINavigationItem+Extention.swift
//  ZTFDouyuTV
//
//  Created by feifei on 2016/10/20.
//  Copyright © 2016年 赵腾飞. All rights reserved.
//

import UIKit

extension UIBarButtonItem {

    convenience init(imageName : UIImage) {
        let btn = UIButton()
        
        btn.setImage(imageName, for: .normal)

        self.init(customView : btn)
        
    }
}
