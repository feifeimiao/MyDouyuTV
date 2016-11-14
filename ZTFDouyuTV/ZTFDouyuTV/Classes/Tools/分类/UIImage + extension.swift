//
//  UIImage + extension.swift
//  ZTFDouyuTV
//
//  Created by feifei on 2016/10/20.
//  Copyright © 2016年 赵腾飞. All rights reserved.
//

import UIKit

extension UIImage {

    //根据颜色生成图片
    class func colorWithImage(color : UIColor) -> UIImage {
        
        let rect = CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0)
        
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(color.cgColor)
        context!.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
    
        return image!

    }
    
}
