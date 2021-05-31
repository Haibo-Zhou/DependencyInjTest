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
        
//        print(viewControllers[1].viewcontrollers)
        if let naviController = viewControllers[1] as? UINavigationController {
            if let vc = naviController.viewControllers[0] as? SongsViewController {
                vc.modelController = modelController
            }
        }
        
//        for viewController in viewControllers {
//            switch viewController {
//            case let viewController as SongsViewController:
//                print("ASAS")
//                viewController.modelController = modelController
//            default:
//                break
//            }
//        }
    }
}
