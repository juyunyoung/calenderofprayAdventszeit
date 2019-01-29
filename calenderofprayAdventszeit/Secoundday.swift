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
    let bibleDic = [1:"1.png",2:"2.png",3:"3.png",4:"4.png",5:"5.png",6:"6.png",7:"7.png"]
    var clickcount:Int = 1
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }
    @IBAction func addText(_ button: UIButton!) {
        if(clickcount < 8){
            let yrect = 300+clickcount*10
            let imageview = TextInageview (frame: CGRect(x:100, y:yrect, width:290, height:30))
            imageview.isUserInteractionEnabled = true
            imageview.image = UIImage(named: bibleDic[clickcount]!)
            
            imageview.contentMode = .scaleAspectFit
            self.view.addSubview(imageview)
            clickcount += 1
        }

    }
}

