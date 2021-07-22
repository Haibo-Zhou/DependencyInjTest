//
//  NewViewController.swift
//  DependencyInjTest
//
//  Created by HaiboZhou on 2021/7/22.
//

import UIKit

class NewViewController: UIViewController {
    var modelController: ModelController!

    override func viewDidLoad() {
        super.viewDidLoad()
        if modelController == nil {
            print("modelController is nil")
        }
        
        view.backgroundColor = .yellow
    }
    
    convenience init(modelController: ModelController) {
        self.init()
        self.modelController = modelController
    }
    
}
