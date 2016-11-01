//
//  HomeViewController.swift
//  ZTFDouyuTV
//
//  Created by feifei on 2016/10/16.
//  Copyright © 2016年 赵腾飞. All rights reserved.
//

import UIKit



class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        
        self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
    
        
    }
  
    

}


extension HomeViewController {

    fileprivate func setupUI() {
        

        setupNC()
        
    }
    
    private func setupNC() {
        
        //添加leftItem
        let logItem = UIButton()
        logItem.setImage(#imageLiteral(resourceName: "homeLogoIcon"), for: .normal)
        logItem.sizeToFit()
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: logItem)
        
        //添加rightItems
        
        let ssBtn = UIButton()
        ssBtn.setImage(#imageLiteral(resourceName: "viewHistoryIcon"), for: .normal)
        ssBtn.setImage(#imageLiteral(resourceName: "viewHistoryIconHL"), for: .selected)
        ssBtn.sizeToFit()
        let ss = UIBarButtonItem(customView: ssBtn)
        
        let llBtn = UIButton()
        llBtn.setImage(#imageLiteral(resourceName: "scanIcon"), for: .normal)
        llBtn.setImage(#imageLiteral(resourceName: "scanIconHL"), for: .selected)
        llBtn.sizeToFit()
        let ll = UIBarButtonItem(customView: llBtn)
        
        let ewBtn = UIButton()
        ewBtn.setImage(#imageLiteral(resourceName: "searchBtnIcon"), for: .normal)
        ewBtn.setImage(#imageLiteral(resourceName: "searchBtnIconHL"), for: .selected)
        ewBtn.sizeToFit()
        let ew = UIBarButtonItem(customView: ewBtn)
        
        self.navigationItem.rightBarButtonItems  = [ss,ll,ew]
    
    }
    
}
