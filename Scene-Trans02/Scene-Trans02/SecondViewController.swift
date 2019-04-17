//
//  File.swift
//  Scene-Trans02
//
//  Created by 김광준 on 17/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let secondLabel = UILabel()
    let dismissBtn = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpSecondVC()
    }
    
    func setUpSecondVC() {
        view.backgroundColor = .white
        
        secondLabel.frame = CGRect(x: view.frame.width / 3, y: view.frame.height / 5 , width: 200, height: 150)
        secondLabel.text = "SecondVC"
        secondLabel.textColor = .blue
        secondLabel.textAlignment = .center
        secondLabel.font = UIFont.boldSystemFont(ofSize: 30)
        view.addSubview(secondLabel)
        
        dismissBtn.frame = CGRect(x: view.frame.width / 3, y: view.frame.height / 4, width: 100, height: 150)
        dismissBtn.setTitle("dismiss", for: .normal)
        dismissBtn.setTitleColor(.blue, for: .normal)
        dismissBtn.addTarget(self, action: #selector(didTabDisMissBtn), for: .touchUpInside)
        view.addSubview(dismissBtn)
    }
    
    @objc func didTabDisMissBtn() {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}

