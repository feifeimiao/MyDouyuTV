//
//  MainViewController.swift
//  ZTFDouyuTV
//
//  Created by feifei on 2016/10/16.
//  Copyright © 2016年 赵腾飞. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabBar.isTranslucent = false
        allChildViewController()
        
        
        
    }


}

extension MainViewController {

    
    fileprivate func allChildViewController()  {
        
        addOne(vc: HomeViewController(), tit: "主页", image:  #imageLiteral(resourceName: "tabHome"), selImage: #imageLiteral(resourceName: "tabHomeHL"))
        addOne(vc: LiveViewController(), tit: "直播", image: #imageLiteral(resourceName: "tabLiving"), selImage: #imageLiteral(resourceName: "tabLivingHL"))
        addOne(vc: FollowViewController(), tit: "关注", image: #imageLiteral(resourceName: "tabFocus"), selImage: #imageLiteral(resourceName: "tabFocusHL"))
        addOne(vc: MyViewController(), tit: "个人", image: #imageLiteral(resourceName: "tabMine"), selImage: #imageLiteral(resourceName: "tabMineHL"))
        
    }
    
    
    
    //添加一个子控制器
    private func addOne(vc : UIViewController , tit : String , image : UIImage , selImage : UIImage) {
        
        let nc = NCViewController(rootViewController: vc)
        
        vc.tabBarItem.title = tit
        
        vc.tabBarItem.image = image
        vc.tabBarItem.selectedImage = selImage
        
        self.tabBar.tintColor = UIColor.orange
        self.addChildViewController(nc)
        
        
    }
}


