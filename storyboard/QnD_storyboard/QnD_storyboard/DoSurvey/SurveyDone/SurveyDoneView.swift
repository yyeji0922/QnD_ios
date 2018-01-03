//
//  SurveyDoneView.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 2..
//

import UIKit

class SurveyDoneView: UIView {
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "SurveyDoneView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
    @IBOutlet weak var doneBtn: UIButton!
    
    @IBAction func doneBtn(_ sender: Any) {
        let t = DoSurveyViewController()
        t.selected = 4
        //t.reloadData()
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
