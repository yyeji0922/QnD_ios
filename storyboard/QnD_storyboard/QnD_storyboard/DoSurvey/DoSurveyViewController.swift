//
//  DoSurveyViewController.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 2..
//

import UIKit

class DoSurveyViewController: UIViewController {
    var selected = 2
    var refreshControl: UIRefreshControl!
    @IBOutlet weak var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dropShadow(v: containerView, color: .black, opacity: 0.2, offSet: CGSize(width: -1, height: 1), radius: 3, scale: true)
        
    }
    func haha(){
        
    }
    /*
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
*/
 }
