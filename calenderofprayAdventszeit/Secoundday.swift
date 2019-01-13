//
//  SecoundPage.swift
//  calenderofprayAdventszeit
//
//  Created by 주 윤령 on 09/01/2019.
//  Copyright © 2019 주 윤령. All rights reserved.
//

import Foundation

import UIKit

class Secoundday: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }
    @IBAction func addText(_ button: UIButton!) {
        
        let imageview = TextInageview (frame: CGRect(x:100, y:300, width:290, height:30))
        imageview.isUserInteractionEnabled = true
        imageview.image = UIImage(named: "text1.png")
        imageview.backgroundColor = UIColor.red
        imageview.contentMode = .scaleAspectFit
        self.view.addSubview(imageview)
    }
}

