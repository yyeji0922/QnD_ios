//
//  SurveyTypeView1.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 1..
//

import UIKit

class SurveyTypeView1: UIView {

    class func instanceFromNib() -> UIView {
        return UINib(nibName: "SurveyTypeView1", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }

}
