//
//  ViewController.swift
//  Scene-Trans01
//
//  Created by 김광준 on 16/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func moveNext(_ sender: Any) {
        
        // 이동할 뷰 컨트롤러 객체를 StoryboardID 정보를 이용하여 참조.
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else { return }
        
        // 화면 전활할 때의 애니매이션 타입
        uvc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        
        // 인자값으로 뷰 컨트롤러 인스턴스를 넣고 프레텐트 메소드 호출
        //  uvc는 UIViewController 인스턴스
        // 첫번째 인자값은 전환할 대상이 되는 뷰 컨트롤러 인스턴스를 받는곳이다 (uvc 자리)
        // 두번째 인자값인 animated는 화면 전환 시에 애니매이션 처리를 할 것인지의 여부
        // true이면 애니매이션 처리를 한다는것
        // false는 애니매이션 처리를 안한다는것
        // 여기서는 true이므로 modalTransitionStyle 속성에서 설정한 값이 화면 전환 시에 사용
        self.present(uvc, animated: true)
        
    }
    
}
