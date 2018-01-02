//
//  checklistBtn.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 1..
//

import UIKit

class checklistBtn : UIButton{
    var image1 = UIImage(named: "test")
    var image2 = UIImage(named: "test2")
    var stateofBtn : Int = 0
    
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
            self.setImage( image1, for: UIControlState.normal)
        }
        else {
            self.stateofBtn = 0
            self.setImage( image2, for: UIControlState.normal)
        }
    }
    
}
/*
class warnchecklistBtn : checklistBtn {
    var first = 0
    
    override func changeState() {
        if(first == 0) {
            let t = MakeMoreSurveyViewController()
            t.AlertCoin()
            first = 1
        }
        else {
            super.changeState()
        }
    }
}
*/
