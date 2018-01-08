//
//  DoneSurveyViewController.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 5..
//

import UIKit

class DoneSurveyViewController: UIViewController {
    var selected = 4
    @IBOutlet weak var subscrollView: UIScrollView!
    
    @IBOutlet weak var subView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        dropShadow(v: subView, color: .black, opacity: 0.2, offSet: CGSize(width: -1, height: 1), radius: 3, scale: true)
        chooseSurveyType()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func setSideView(sideView: UIView){
        sideView.frame = subView.frame
        subView.addSubview(sideView)
        //subView.viewWillAppear(true)
        
        
    }
    
    func setSideScrollView(sideView: UIView){
        sideView.frame = subscrollView.frame
       /*
        let topConstraint = NSLayoutConstraint(item: sideView, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 0)
        let bottomConstraint = NSLayoutConstraint(item: sideView, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1, constant: 0)
        let leadingConstraint = NSLayoutConstraint(item: sideView, attribute: .leading, relatedBy: .equal, toItem: self, attribute: NSLayoutAttribute.leading, multiplier: 1, constant: 0)
        let trailingConstraint = NSLayoutConstraint(item:sideView, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: NSLayoutAttribute.trailing, multiplier: 1, constant: 0)
        
       subscrollView.addConstraints([topConstraint, bottomConstraint, leadingConstraint, trailingConstraint])
 */
        subscrollView.addSubview(sideView)
        //subView.viewWillAppear(true)
        
        
    }
    func chooseSurveyType(){
        switch selected {
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
