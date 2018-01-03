//
//  DoSurveyViewController.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 2..
//

import UIKit

class DoSurveyViewController: UIViewController {
    var selected = 0
    
    @IBOutlet weak var subView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if (selected < 3) {setSideView(sideView: subView)}
        chooseSurveyType()
    }

    func setSideView(sideView: UIView){
        sideView.frame = subView.frame
        self.view.addSubview(sideView)
        
    }

    func setSideView2(sideView: UIView){
        //sideView.frame = subView.frame
        self.view.addSubview(sideView)
        
    }
    
    func chooseSurveyType(){
        switch selected {
        case 0:
            let sideView = DoSurveyTypeView1.instanceFromNib()
            setSideView(sideView: sideView)
            break
        case 1 :
            let sideView = DoSurveyTypeView2.instanceFromNib()
            setSideView(sideView: sideView)
            break
        case 2 :
            let sideView = DoSurveyTypeView3.instanceFromNib()
            setSideView(sideView: sideView)
            break
        case 3 : //SurveyDoneView
             let sideView = SurveyDoneView.instanceFromNib()
             setSideView(sideView: sideView)
             break
        case 4:
            let sideView = ResultSurveyTypeView1.instanceFromNib()
            setSideView(sideView: sideView)
            break
        case 5:
            let sideView = ResultSurveyTypeView2.instanceFromNib()
            setSideView(sideView: sideView)
            break
        case 6:
            let sideView = ResultSurveyTypeView3.instanceFromNib()
            setSideView(sideView: sideView)
            break
        default:
            print("error has occured")
            break
        }
    }
}
