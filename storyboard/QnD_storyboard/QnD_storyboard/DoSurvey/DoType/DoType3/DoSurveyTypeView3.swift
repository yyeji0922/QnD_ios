//
//  DoSurveyTypeView3.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 2..
//

import UIKit

class DoSurveyTypeView3: UIView {

    @IBOutlet weak var submitBtn: UIButton!
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "DoSurveyTypeView3", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
    

}
