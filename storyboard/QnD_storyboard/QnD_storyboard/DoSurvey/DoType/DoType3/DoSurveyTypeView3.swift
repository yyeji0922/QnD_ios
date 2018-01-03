//
//  DoSurveyTypeView3.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 2..
//

import UIKit

class DoSurveyTypeView3: UIView {

    @IBAction func submitBtn(_ sender: Any) {
    }
    @IBOutlet weak var submitBtn: UIButton!
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "DoSurveyTypeView3", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
