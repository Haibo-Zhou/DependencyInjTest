//
//  SongsViewController.swift
//  DependencyInjTest
//
//  Created by HaiboZhou on 2021/5/31.
//

import UIKit

class SongsViewController: UIViewController {
    var modelController: ModelController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "View Controller2"
        view.backgroundColor = .brown
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        guard modelController != nil else {
            fatalError("modelController is nil")
        }
    }

}
