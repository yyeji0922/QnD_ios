//
//  SurveyTypeView2.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. c1..
//

import UIKit

class SurveyTypeView2: UIView {
   
    //let imagePicker:UIImagePickerController = UIImagePickerController()
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "SurveyTypeView2", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
    @IBOutlet weak var imageA: UIImageView!
    @IBOutlet weak var imageB: UIImageView!
   
    @IBAction func changeImageA(_ sender: Any) {
    }
    @IBAction func changeImageB(_ sender: Any) {
    
    }
    

}



