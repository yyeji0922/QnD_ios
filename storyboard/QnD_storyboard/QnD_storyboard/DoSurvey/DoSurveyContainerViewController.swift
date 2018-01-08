//
//  DoSurveyContainerViewController.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 5..
//

import UIKit

class DoSurveyContainerViewController: UIViewController {
    var type = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //choosetype()
        //let sideView = DoSurveyTypeView1.instanceFromNib()
        //sideView.frame = self.view.frame
        //self.view.addSubview(sideView)
        // Do any additional setup after loading the view.
    }
    
    
    func choosetype(){
        switch type {
        case 0:
            let sideView = DoSurveyTypeView1.instanceFromNib()
            self.view.addSubview(sideView)
            break
        case 1:
            let sideView = DoSurveyTypeView2.instanceFromNib()
            sideView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
            self.view.addSubview(sideView)
            break
        case 2:
            let sideView = DoSurveyTypeView3.instanceFromNib()
            sideView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
            self.view.addSubview(sideView)
            break
        default:
            break
            
        }
    }
}
