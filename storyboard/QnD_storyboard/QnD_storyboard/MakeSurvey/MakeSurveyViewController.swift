//
//  MakeSurveyViewController.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2017. 12. 31..
//

import UIKit

class MakeSurveyViewController: UIViewController {
    var selected = "객관식"
    let answerTypes = ["객관식","A/B","찬/반"]
    
    @IBOutlet weak var makeBtn: UIButton!
    @IBOutlet weak var answerTypePicker: UIPickerView!

    @IBAction func makeBtn(_ sender: Any) {
        print(selected)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerTypePicker.dataSource = self
        answerTypePicker.delegate = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

extension MakeSurveyViewController : UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return answerTypes.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selected =  answerTypes[pickerView.selectedRow(inComponent: 0)]
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return answerTypes[row]
    }
    
    
}
