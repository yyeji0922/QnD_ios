//
//  MakeMoreSurveyViewController.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 1..
//

import UIKit

class MakeMoreSurveyViewController: UIViewController {
    var nonameBtn = checklistBtn()
    @IBOutlet weak var personnelField: UITextField!
    @IBOutlet weak var nonameSwitch: UISwitch!
    @IBOutlet weak var ageSwitch: UISwitch!
    @IBOutlet weak var sexSwitch: UISwitch!
    @IBOutlet weak var durationBtn: UIButton!
    @IBOutlet weak var ageBtn: UIButton!
    
    @IBAction func durationBtn(_ sender: Any) {
        performSegue(withIdentifier: "toPickerView", sender: durationBtn)
    }
    @IBAction func ageBtn(_ sender: Any) {
        performSegue(withIdentifier: "toPickerView", sender: ageBtn)
    }
    
    @IBOutlet weak var marriageSwitch: UISwitch!
    @IBOutlet weak var jobSwitch: UISwitch!
    @IBOutlet weak var scholarSwitch: UISwitch!
    @IBOutlet weak var areaSwitch: UISwitch!
    
    @IBAction func submitBtn(_ sender: Any) {
        var noname = nonameSwitch.state
        var age = ageSwitch.state
        var sex = ageSwitch.state
        
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    var lockBtns = checklistBtn()
    
    var ageBtns = checklistBtn()
    /*var sexBtn = warnchecklistBtn()
    var marriageBtn = warnchecklistBtn()
    */
    func DisableSwitch(sw : UISwitch){
        sw.isOn = false
        sw.isEnabled = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DisableSwitch(sw: marriageSwitch);
        DisableSwitch(sw: jobSwitch);
        DisableSwitch(sw: scholarSwitch);
        DisableSwitch(sw: areaSwitch);
        personnelField.delegate = self
 
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
extension MakeMoreSurveyViewController : UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let aSet = NSCharacterSet(charactersIn:"0123456789").inverted
        let compSepByCharInSet = string.components(separatedBy: aSet)
        let numberFiltered = compSepByCharInSet.joined(separator: "")
        return string == numberFiltered
    }
}
