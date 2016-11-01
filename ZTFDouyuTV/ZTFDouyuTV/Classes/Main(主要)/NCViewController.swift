//
//  NCViewController.swift
//  ZTFDouyuTV
//
//  Created by feifei on 2016/10/16.
//  Copyright © 2016年 赵腾飞. All rights reserved.
//

import UIKit

class NCViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationBar.isTranslucent = false
        
        let img = UIImage.colorWithImage(color: UIColor.orange)
        
        self.navigationBar.setBackgroundImage(img, for: .default)
        
  
    }

}
