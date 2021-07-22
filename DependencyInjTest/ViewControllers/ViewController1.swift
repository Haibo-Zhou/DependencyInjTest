//
//  ViewController1.swift
//  DependencyInjTest
//
//  Created by HaiboZhou on 2021/5/31.
//

import UIKit

class ViewController1: UIViewController {
    var modelController: ModelController!
    
    var button: UIButton = {
        var btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("GO", for: .normal)
        btn.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        btn.backgroundColor = .red
        btn.layer.cornerRadius = 8
        btn.clipsToBounds = true
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "View Controller1"
        view.backgroundColor = .systemGreen
        
        setViews()
    }
    
    func setViews() {
        view.addSubview(button)
        
        let g = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: g.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: g.centerYAnchor),
            button.widthAnchor.constraint(equalTo: g.widthAnchor, multiplier: 0.25),
            button.heightAnchor.constraint(equalTo: button.widthAnchor, multiplier: 0.5)
        ])
    }
    
    @objc func buttonTapped(_ sender: Any) {
        let vc = NewViewController(modelController: self.modelController)
//        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }

}
