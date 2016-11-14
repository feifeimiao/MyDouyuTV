//
//  pageHeadView.swift
//  ZTFDouyuTV
//
//  Created by feifei on 2016/11/12.
//  Copyright © 2016年 赵腾飞. All rights reserved.
//

import UIKit

 class pageHeadView: UIView {

    private var names : [String]
    
    init(frame: CGRect, names :[String]) {
       
      
        
        self.names = names
        
          super.init(frame: frame)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
