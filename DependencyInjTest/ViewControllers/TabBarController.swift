//
//  TabBarController.swift
//  DependencyInjTest
//
//  Created by HaiboZhou on 2021/5/31.
//

import UIKit

class TabBarController: UITabBarController {
    var modelController: ModelController!

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let viewControllers = viewControllers else {
            return
        }
        
        if let naviController = viewControllers[0] as? UINavigationController {
            if let vc = naviController.viewControllers[0] as? ViewController1 {
                vc.modelController = modelController
            }
        }
        
        if let naviController = viewControllers[1] as? UINavigationController {
            if let vc = naviController.viewControllers[0] as? ViewController2 {
                vc.modelController = modelController
            }
        }
        
        
        
    }
}
