//
//  ViewController.swift
//  Scene-Trans01-byCode
//
//  Created by 김광준 on 16/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let firstViewControllerLabel = UILabel()
    let secondViewController = SecondViewController()
    let moveButton = UIButton()
//    let firstView = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        print(view.frame.maxX) // 414.0
        //        print(view.frame.maxY) // 896.0
        
        view.backgroundColor = .blue
        
        firstViewControllerLabel.frame = CGRect(x: view.frame.width / 3,
                                                y: view.frame.height / 5,
                                                width: 200,
                                                height: 150)
        firstViewControllerLabel.text = "FirstVC"
        firstViewControllerLabel.font = UIFont.boldSystemFont(ofSize: 30)
        firstViewControllerLabel.textColor = .white
        
        moveButton.frame = CGRect(x: view.frame.width / 3,
                                  y: view.frame.height / 4,
                                  width: 100,
                                  height: 200)
        moveButton.setTitle("Move", for: .normal)
        moveButton.setTitleColor(.white, for: .normal)
        moveButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        moveButton.addTarget(self,
                             action: #selector(didTapMoveButton),
                             for: .touchUpInside)
        
        view.addSubview(firstViewControllerLabel)
        view.addSubview(moveButton)
        
    }
    
    @objc func didTapMoveButton() {

        self.present(secondViewController, animated: true, completion: nil)
        
    }


}

