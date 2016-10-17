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

        
      addOne(vc: HomeViewController(), tit: "主页", image: #imageLiteral(resourceName: "tabMine") , selImage: #imageLiteral(resourceName: "tabMineHL"))
      addOne(vc: LiveViewController(), tit: "直播", image: #imageLiteral(resourceName: "tabLiving"), selImage: #imageLiteral(resourceName: "tabLivingHL"))
      addOne(vc: FollowViewController(), tit: "关注", image: #imageLiteral(resourceName: "tabFocus"), selImage: #imageLiteral(resourceName: "tabFocusHL"))
        addOne(vc: MyViewController(), tit: "个人", image: #imageLiteral(resourceName: "tabMine"), selImage: #imageLiteral(resourceName: "tabMineHL"))
        
    }

}


//MARK: - 添加子控制器

extension MainViewController {

    func addOne(vc : UIViewController , tit : String , image : UIImage? , selImage : UIImage?) {
        
        
        let nc = NCViewController(rootViewController: vc)
        
        vc.title = tit
        
        vc.tabBarItem.image = image
        vc.tabBarItem.selectedImage = selImage
//        vc.tabBarItem.
        
        self.tabBar.tintColor = UIColor.orange
        self.addChildViewController(nc)
        
        
    }

    

}
