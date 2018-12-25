//
//  oneday.swift
//  calenderofprayAdventszeit
//
//  Created by 주 윤령 on 15/12/2018.
//  Copyright © 2018 주 윤령. All rights reserved.
//

import UIKit

class Oneday: UIViewController {
    
    
    @IBOutlet var bibleText: UITextView!
    @IBOutlet var bibleText1: UIButton!
    @IBOutlet var bibletext2: UIButton!
    @IBOutlet var bibleText3: UIButton!
    @IBOutlet var bibleText4: UIButton!
    @IBOutlet var bibleText5: UIButton!
    @IBOutlet var bibleText6: UIButton!
    @IBOutlet var bibleText7: UIButton!
    @IBOutlet var bibletext8: UIButton!
    @IBOutlet var bibleText9: UIButton!
    @IBOutlet var bibleText10: UIButton!
    var countNum:Int = 1
    var bibleValue:String = ""
    let bibleDic = [1:"그러므로 주께서",2:" 친히 징조를",3:" 너희에게",4:" 주실 것이라",5:" 보라",6:" 처녀가 잉태하여",7:" 아들을 낳을 것이요",8:" 그의 이름을",9:" 임마누엘이라",10:" 하리라."]
    override func viewDidLoad() {
        super.viewDidLoad()
        bibleValue =  maketString(count:10)
        bibleText.text = bibleValue
        
    }
    
    @IBAction func changeTextColor(_ sender: UIButton) {
        let texval:Int = Int(sender.restorationIdentifier ?? "0")!
        if (countNum == texval){
            let attributedString = NSMutableAttributedString(string: bibleValue)
            let bigBoldFont = UIFont.boldSystemFont(ofSize: 26.0)
            let bigNormalFont = UIFont.boldSystemFont(ofSize: 24.0)

            let tempString = maketString(count:countNum)
            attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.blue, range: (bibleValue as NSString).range(of:tempString))
            attributedString.addAttribute(kCTFontAttributeName as NSAttributedString.Key , value: bigNormalFont, range: (bibleValue as NSString).range(of: bibleValue))
            
           attributedString.addAttribute(kCTFontAttributeName as NSAttributedString.Key , value: bigBoldFont, range: (bibleValue as NSString).range(of: tempString))
            
            bibleText.attributedText = attributedString
            

         countNum += 1
        }else{
            let alert = UIAlertController( title: "", message: "다시해보자", preferredStyle: .alert)
            let action = UIAlertAction(title: "확인", style: .destructive){
                (restul: UIAlertAction) -> Void in
            }
            alert.addAction(action)
            self.present(alert,animated: true, completion: nil)
        }
    }
    func maketString(count:Int) -> String{
        var temp:String = ""
        var num:Int = 1
        repeat {
            temp = temp + bibleDic[num]!
            num += 1
        }while num <= count
        print(temp)
        return temp
    }
    
}
