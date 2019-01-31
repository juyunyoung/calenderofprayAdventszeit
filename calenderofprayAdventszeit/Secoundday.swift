//
//  SecoundPage.swift
//  calenderofprayAdventszeit
//
//  Created by 주 윤령 on 09/01/2019.
//  Copyright © 2019 주 윤령. All rights reserved.
//

import Foundation
import AVFoundation
import UIKit

class Secoundday: UIViewController{
 //   let bibleDic = [1:"1.png",2:"2.png",3:"3.png",4:"4.png",5:"5.png",6:"6.png",7:"7.png"]
    var clickcount:Int = 1
    var bombSoundEffect: AVAudioPlayer? = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "44", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        do {
            
            bombSoundEffect = try AVAudioPlayer(contentsOf: url)
        } catch {
            print("err sound file")
        }
        
    }
    
    @IBAction func addText(_ button: UIButton!) {
bombSoundEffect?.play()
        

        if(clickcount < 8){
            let yrect = 300+clickcount*10
            let xrect = 50+clickcount*10

            let imageview = TextInageview (frame: CGRect(x:xrect, y:yrect, width:331, height:38))
            imageview.isUserInteractionEnabled = true
            imageview.contentMode = UIView.ContentMode(rawValue: 7)!
            imageview.image = UIImage(named: String(clickcount)+".png")
            imageview.restorationIdentifier = String(clickcount)
            
            imageview.contentMode = .scaleAspectFit
            self.view.addSubview(imageview)
            clickcount += 1
        }

    }
}

