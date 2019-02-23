//
//  ViewController.swift
//  HelloWorld
//
//  Created by 김광준 on 23/02/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var uiTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sayHello(_ sender: Any) {
        self.uiTitle.text = "Hello World!"
    }
    
}

