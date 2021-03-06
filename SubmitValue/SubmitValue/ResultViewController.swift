//
//  ResultViewController.swift
//  SubmitValue
//
//  Created by 김광준 on 19/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    // 화면에 값을 표시하는데 사용될 레이블들
    @IBOutlet var resultEmail: UILabel! // 이메일
    @IBOutlet var resultUpdate: UILabel! // 자동갱신 여부
    @IBOutlet var resultInterval: UILabel! // 갱신주기
    
    // email 값을 받을 변수
    var paramEmail: String = ""
    
    // update 값을 받을 변수
    var paramUpdate: Bool = false
    
    // Interval 값을 받을 변수
    var paramInterval: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.resultEmail.text = paramEmail
        self.resultUpdate.text = (self.paramUpdate == true ? "자동갱신" : "자동갱신안함")
        self.resultInterval.text = "\(Int(paramInterval)) 분 마다 갱신"
    }
    
    
    
    @IBAction func onBack(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
}
