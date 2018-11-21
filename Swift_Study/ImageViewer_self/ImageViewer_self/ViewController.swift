//
//  ViewController.swift
//  ImageViewer_self
//
//  Created by 김광준 on 21/11/2018.
//  Copyright © 2018 VincentGeranium. All rights reserved.
//

import UIKit

var numImage = 0

class ViewController: UIViewController {
    @IBOutlet var imgView: UIImageView!
    
    var imageName = ["01.png" , "02.png" , "03.png" , "04.png" , "05.png" , "06.png"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imgView.image = UIImage(named: imageName[0])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnBeforeImage(_ sender: UIButton) {
        numImage = numImage - 1
        if(numImage<0){
            numImage = imageName.count-1
        }
        
        imgView.image = UIImage(named:imageName[numImage])
    }
    
    @IBAction func btnNextImage(_ sender: UIButton) {
        numImage = numImage + 1
        if(numImage>=imageName.count){
            numImage = 0
        }
        
        imgView.image = UIImage(named:imageName[numImage])
        
    }
    
}

