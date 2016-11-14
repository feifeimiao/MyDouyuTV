//
//  HomeViewController.swift
//  ZTFDouyuTV
//
//  Created by feifei on 2016/10/16.
//  Copyright © 2016年 赵腾飞. All rights reserved.
//

import UIKit



class HomeViewController: UIViewController {

    //MARK: - 懒加载属性
    
    fileprivate var pageTitView : pageHeadView = {
        
    let titFrame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 40)
    let names = ["zhu","hah","hahha"]
    let titView = pageHeadView.init(frame: titFrame, names: names)
        titView.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        
    return titView
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        
        self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        self.view.addSubview(pageTitView)
        
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
