//
//  NewSegue.swift
//  Scene-CustomSegue
//
//  Created by 김광준 on 18/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit
class NewSegue: UIStoryboardSegue {
    override func perform() {
        
        let srcUVC = self.source
        
        let destUVC = self.destination
        
        UIView.transition(from: srcUVC.view, to: destUVC.view, duration: 2, options: .transitionCurlDown)
    }
}
