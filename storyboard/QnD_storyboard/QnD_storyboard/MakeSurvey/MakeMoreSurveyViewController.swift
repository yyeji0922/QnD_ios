//
//  MakeMoreSurveyViewController.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 1..
//

import UIKit

class MakeMoreSurveyViewController: UIViewController {
    var nonameBtn = checklistBtn()
    var lockBtn = checklistBtn()
    /*
    var ageBtn = warnchecklistBtn()
    var sexBtn = warnchecklistBtn()
    var marriageBtn = warnchecklistBtn()
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        setBtn(button: nonameBtn)
        //setBtn(button: lockBtn)
        //setwarnBtn(button: ageBtn)
        //setwarnBtn(button: sexBtn)
        //setwarnBtn(button: marriageBtn)
 
    }
    
    func setBtn(button: checklistBtn){
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.addTarget(self, action: #selector(action), for: .touchUpInside)
    }
    /*
    func setwarnBtn(button: warnchecklistBtn){
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.addTarget(self, action: #selector(action), for: .touchUpInside)
    }
    */
    @objc func action(sender : checklistBtn) {
        sender.changeState()
    }
    
    func AlertCoin(){
        let alert = UIAlertController(title: "20 코인이 필요합니다.", message: nil, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "네", style: .default, handler: nil)
        let cancelAction = UIAlertAction(title: "아니요", style: .cancel, handler: nil)
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
    }

   
}
