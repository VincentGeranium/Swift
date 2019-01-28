//
//  ViewController.swift
//  Alert_self
//
//  Created by 김광준 on 14/01/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    var alarmTime:String?
    var alertFlag = false
    
    
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
    }
    
    @objc func updateTime() {
        lblCurrentTime.text = String(count)
        count = count + 1
    }


}

