//
//  ViewController.swift
//  Scene-Trans02
//
//  Created by 김광준 on 17/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let firstLabel = UILabel()
    let moveButton = UIButton()
    let secondVC = SecondViewController()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        print(view.frame.maxX) // 414.0
//        print(view.frame.maxY) // 896.0
        
        view.backgroundColor = .blue
        setUp()
    }
    
    func setUp() {
        firstLabel.frame = CGRect(x: view.frame.width / 3, y: view.frame.height / 5, width: 200, height: 150)
        firstLabel.text = "FirstVC"
        firstLabel.textAlignment = .center
        firstLabel.textColor = .white
        firstLabel.font = UIFont.boldSystemFont(ofSize: 30)
        view.addSubview(firstLabel)
        
        moveButton.frame = CGRect(x: view.frame.width / 3, y: view.frame.height / 4, width: 100, height: 150)
        moveButton.setTitle("MoveBtn", for: .normal)
        moveButton.setTitleColor(.white, for: .normal)
//        moveButton.titleLabel?.font.pointSize = CGFont
        moveButton.addTarget(self, action: #selector(didTabButton), for: .touchUpInside)
        view.addSubview(moveButton)
    }
    
    @objc func didTabButton() {
        present(secondVC, animated: true, completion: nil)
    }


}

