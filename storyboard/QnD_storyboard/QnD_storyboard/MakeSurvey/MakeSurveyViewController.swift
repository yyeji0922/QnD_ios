//
//  MakeSurveyViewController.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2017. 12. 31..
//

import UIKit

class MakeSurveyViewController: UIViewController {
    var selected = 0
    let answerTypes = [0,1,2]
    func test(){
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func makeBtn(_ sender: Any) {        print(selected)//selected를 넘겨 줘야겠지
        performSegue(withIdentifier: "toMoreMakeSurvey", sender: makeBtn)
    }
    @IBOutlet weak var makeBtn: UIBarButtonItem!
    @IBOutlet weak var answerTypePicker: UIPickerView!
    @IBOutlet weak var subView: UIView!
    
    
    @objc func getSwipeAction( _ recognizer : UISwipeGestureRecognizer){
        if recognizer.direction == .right{
            selected = ( selected + 1 ) % 3
            chooseSurveyType()
            print("Right Swiped")
        } else if recognizer.direction == .left {
            selected = ( selected - 1 ) % 3
            chooseSurveyType()
            print("Left Swiped")
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerTypePicker.dataSource = self
        answerTypePicker.delegate = self
        subView.isUserInteractionEnabled = true
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(getSwipeAction))
        self.subView.addGestureRecognizer(swipeGesture)
        chooseSurveyType()
        // Do any additional setup after loading the view.
    }

    func setSideView(sideView: UIView){
        sideView.frame = subView.frame
        self.view.addSubview(sideView)
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
        chooseSurveyType()
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(answerTypes[row])
    }
    
    func chooseSurveyType(){
        switch selected {
        case 0 :
            let sideView = SurveyTypeView1.instanceFromNib()
            setSideView(sideView: sideView)
            break
        case 1 :
            let sideView = SurveyTypeView2.instanceFromNib()
            setSideView(sideView: sideView)
            break
        case 2 :
            let sideView = SurveyTypeView3.instanceFromNib()
            setSideView(sideView: sideView)
            break
        default:
            print("error has occured")
            break
        }
    }
}




