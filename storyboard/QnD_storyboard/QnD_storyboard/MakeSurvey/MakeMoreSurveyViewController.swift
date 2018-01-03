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
    @IBOutlet weak var personnelField: UITextField!
    @IBAction func personnelField(_ sender: Any) {
    }
    
    var ageBtn = checklistBtn()
    /*var sexBtn = warnchecklistBtn()
    var marriageBtn = warnchecklistBtn()
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        //setBtn(button: nonameBtn)
        //setBtn(button: lockBtn)
        setBtn(button: ageBtn); ageBtn.opt = true
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
    
    @objc func action(sender : checklistBtn) {
        if ((sender.opt == true)&&(sender.firstornot == true)) {
            sender.firstornot = false
            AlertCoin(sender :sender)
        }
        else{
            sender.changeState()
        }
    }
    
    func AlertCoin(sender : checklistBtn){
        let alert = UIAlertController(title: "20 코인이 필요합니다.", message: "그래도 추가하시겠습니까?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "네", style: .default, handler: {action in
            sender.changeState()
        })
        let cancelAction = UIAlertAction(title: "아니요", style: .cancel, handler: nil)
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)

    }


}
