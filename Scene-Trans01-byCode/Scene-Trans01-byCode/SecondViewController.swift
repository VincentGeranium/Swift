//
//  SecondViewController.swift
//  Scene-Trans01-byCode
//
//  Created by 김광준 on 16/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let firstViewController = FirstViewController()
    let secondViewControllerLabel = UILabel()
    let moveFirstVCBtn = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        print(view.frame.maxX) // 414.0
        //        print(view.frame.maxY) // 896.0
        view.backgroundColor = .white
        
        secondViewControllerLabel.frame = CGRect(x: view.frame.width / 3,
                                                 y: view.frame.height / 5,
                                                 width: 200,
                                                 height: 150)
        secondViewControllerLabel.text = "SecondVC"
        secondViewControllerLabel.textColor = .black
        secondViewControllerLabel.font = UIFont.boldSystemFont(ofSize: 30)
        view.addSubview(secondViewControllerLabel)
        
        moveFirstVCBtn.frame = CGRect(x: view.frame.width / 3,
                                      y: view.frame.height / 4,
                                      width: 100,
                                      height: 200)
        moveFirstVCBtn.setTitle("FirstVC", for: .normal)
        moveFirstVCBtn.setTitleColor(.black, for: .normal)
        moveFirstVCBtn.addTarget(self, action: #selector(didTabMoveToFirstVCBtn), for: .touchUpInside)
        view.addSubview(moveFirstVCBtn)
        
//        print(presentingViewController)
//        print(presentedViewController)
        

        // Do any additional setup after loading the view.
    }
    
    @objc func didTabMoveToFirstVCBtn() {
        presentedViewController
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
