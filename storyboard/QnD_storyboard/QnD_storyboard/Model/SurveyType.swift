//
//  SurveyType1.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 2..
//
import UIKit
import Foundation

struct SurveyType1 {
    var title : String = ""
    var detail : String = ""
    //var count : Int = 4
    var options : [String] = ["", "","",""]
    //var basicinfo : surveybasicinfo
}

struct SurveyType2 {
    var title : String = ""
    var detail : String = ""
    var img1 : UIImage = #imageLiteral(resourceName: "test")
    var img2 : UIImage = #imageLiteral(resourceName: "test")
    //var basicinfo : surveybasicinfo
}

struct SurveyType3 {
    var title : String = ""
    var detail : String = ""
    //var basicinfo : surveybasicinfo
}
struct surveybasicinfo {
    var startdate : Date
    var enddate : Date
    var personnel : Int = 100
    var noname = 0
    var lock = 0
    
}

struct Moreinfo {
    
}
