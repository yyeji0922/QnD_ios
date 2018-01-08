//
//  checklistBtn.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 1..
//

import UIKit

class checklistBtn : UIButton{
    var image1 = UIImage(named: "test2")
    var image2 = UIImage(named: "test")
    var stateofBtn : Int = 0
    var opt : Bool = false
    var firstornot : Bool = true
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setImage(image1, for: UIControlState.normal)
    }
    
    func changeState(){
        if(stateofBtn == 0){
            self.stateofBtn = 1
            self.setImage( image2, for: UIControlState.normal)
        }
        else {
            self.stateofBtn = 0
            self.setImage( image1, for: UIControlState.normal)
        }
    }
    
}

func dropShadow(v : UIView,color: UIColor, opacity: Float = 0.2, offSet: CGSize, radius: CGFloat = 1, scale: Bool = true) {
    v.layer.masksToBounds = false
    v.layer.shadowColor = color.cgColor
    v.layer.shadowOpacity = opacity
    v.layer.shadowOffset = offSet
    v.layer.shadowRadius = radius
    v.layer.shadowPath = UIBezierPath(rect: v.bounds).cgPath
    v.layer.shouldRasterize = true
    v.layer.rasterizationScale = scale ? UIScreen.main.scale : 1
}

class Toggleset  {
    var b1 : ToggleImageButton?
    var b2 : ToggleImageButton?
    var b3 : ToggleImageButton?
    
    func clicked(whichone: Int){
        b1?.change(whichone: whichone)
        b2?.change(whichone: whichone)
        b3?.change(whichone: whichone)
    }
    
    func setset(b1: ToggleImageButton, b2: ToggleImageButton, b3: ToggleImageButton){
        self.b1 = b1
        self.b2 = b2
        self.b3 = b3
    }
}


class ToggleImageButton : UIButton {
    
    var clickedImg : UIImage?
    var unclickedImg : UIImage?
    var btn : UIButton?
    var type: Int? = 0
    
    func setToggleBtn(clickedImg : UIImage, unclickedImg : UIImage, btn: UIButton, type : Int){
        self.clickedImg = clickedImg
        self.unclickedImg = unclickedImg
        self.btn = btn
        self.type = type
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    func change(whichone : Int){
        if(whichone == type) {
            btn?.setImage(clickedImg, for: UIControlState.normal)
        }
        else {
            btn?.setImage(unclickedImg, for: UIControlState.normal)
        }
    }
    
}

