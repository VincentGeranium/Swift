//
//  SecondViewController.swift
//  Scene-Trans01-BackButton
//
//  Created by 김광준 on 17/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    
    
    @IBAction func back(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
