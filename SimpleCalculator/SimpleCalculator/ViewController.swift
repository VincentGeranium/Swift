//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by 김광준 on 19/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var firstOperand: UITextField!
    @IBOutlet var middleOperator: UITextField!
    @IBOutlet var secondOperand: UITextField!
    
    @IBAction func confirm(_ sender: Any) {
        let (title,message) = calculateOperation()
        showAlert(title: title, message: message)
        
    }
    
    private func calculateOperation() -> (String, String) {
        guard let leftOperand = firstOperand.text,
            let rightOperand = secondOperand.text,
            let firstOperandNum = Double(leftOperand),
            let secondOperandNum = Double(rightOperand)
            else { return ("Error", "올바른 피연산자를 입력해 주세요") }
        guard let operatorText = middleOperator.text,operatorText.count == 1
            else { return ("Error","올바른 연산자를 입력해 주세요") }
        
        let result: Double
        switch operatorText {
        case "+": result = firstOperandNum + secondOperandNum
        case "-": result = firstOperandNum - secondOperandNum
        case "*": result = firstOperandNum * secondOperandNum
        case "/": result = firstOperandNum / secondOperandNum
        default: return("Error", "올바른 연산자를 입력해 주세요")
        }
        return ("결과", "\(result)")
    }
    
    private func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }
        
        

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    

}

