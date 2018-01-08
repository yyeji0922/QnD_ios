//
//  PickerViewController.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 5..
//

import UIKit

class PickerViewController: UIViewController {
    var age = ["10대","20대","30대","40대","50대","60대","70대","80대","90대"]
    var whichone = 0
    
    @IBOutlet weak var subView: UIView!
    @IBOutlet weak var startageBtn: UIButton!
    @IBOutlet weak var finishageBtn: UIButton!
    @IBOutlet weak var doneBtn: UIBarButtonItem!
    
    @IBOutlet weak var pickwithbarView: UIView!
    @IBOutlet weak var diablepickerview: UIBarButtonItem!
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBAction func diablepickerview(_ sender: Any) {
        self.hideornotView(view: pickerView, hidden: true)
    }
    
    @IBAction func startageBtn(_ sender: Any) {
        whichone = 0
        self.hideornotView(view: pickerView, hidden: false)
    }
    
    @IBAction func finishageBtn(_ sender: Any) {
        whichone = 1
        self.hideornotView(view: pickerView, hidden: false)
    }
    
    @IBAction func doneBtn(_ sender: Any) {
        let sr = self.storyboard.instantiateViewControllerWithIdentifier("SecondViewController") as SecondViewController
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        self.hideornotView(view: pickerView, hidden: true)
        // Do any additional setup after loading the view.
    }
    
    func hideornotView(view: UIView, hidden: Bool) {
        UIView.transition(with: view, duration: 0.5, options: .transitionCrossDissolve, animations: {
            view.isHidden = hidden
        }, completion: nil)
    }
    
    func donePicker() {
        pickerView.resignFirstResponder()
    }

}
extension PickerViewController : UIPickerViewDataSource, UIPickerViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return age.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return age[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(whichone == 0 ) {
            startageBtn.setTitle("\(age[row])대 이상", for: .normal)
        }
        else {
            finishageBtn.setTitle("\(age[row])대 이하", for: .normal)
        }
    }
}
