//
//  File.swift
//  SubmitValue-Back
//
//  Created by 김광준 on 22/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit
class FormViewController: UIViewController {
    
    @IBOutlet var email: UITextField!
    @IBOutlet var isUpdate: UISwitch!
    @IBOutlet var interval: UIStepper!
    @IBOutlet var updateLabel: UILabel!
    @IBOutlet var intervalLabel: UILabel!
    
    
    
    @IBAction func onSubmit(_ sender: Any) {
        // presentingViewController 속성을 통해 이전 화면 객체를 읽어온 다음, ViewController 타입으로 캐스팅 한다.
        
        let preVC = self.presentingViewController
        guard let vc = preVC as? ViewController else {
            return
        }
        
        // 값을 전달한다
        vc.paramEmail = self.email.text
        vc.paramUpdate = self.isUpdate.isOn
        vc.paramInterval = self.interval.value
        
        
        // 이전 화면으로 복귀한다
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func didTabSwitchAction(_ sender: Any) {
        if isUpdate.isOn == true {
            updateLabel.text = "자동갱신"
        } else {
            updateLabel.text = "자동갱신하지않음"
        }
    }
    
    @IBAction func didTabStepperAction(_ sender: Any) {
        intervalLabel.text = "\(Int(interval.value))분마다"
    }
    
    
    
    
    
    
}

