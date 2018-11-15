//
//  ManHinh1ViewController.swift
//  ScreenSwitchNoStoryboard
//
//  Created by mac on 11/15/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class ManHinh1ViewController: UIViewController {

    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Sang màn 2", for: .normal)
        
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        
        SetUpButton()
    }

    //MARK: UI Action
    
    @objc func buttonTapped() {
        navigationController?.pushViewController(ManHinh2ViewController(), animated: true)
    }
    
    private func SetUpButton() {
        view.addSubview(button)
        button.frame = CGRect(x: UIScreen.main.bounds.width / 2,
                              y: UIScreen.main.bounds.height / 2,
                              width: 100, height: 40)
    }

}
