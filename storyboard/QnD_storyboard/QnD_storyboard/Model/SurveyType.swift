//
//  SurveyType1.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 2..
//
import UIKit
import Foundation

struct SurveyType1 {
    var title : String
    var detail : String
    var options : [String]
}

struct SurveyType2 {
    var title : String = ""
    var detail : String = ""
    var img1 : UIImage = #imageLiteral(resourceName: "test")
    var img2 : UIImage = #imageLiteral(resourceName: "test")
}

struct SurveyType3 {
    var title : String
    var detail : String
}
