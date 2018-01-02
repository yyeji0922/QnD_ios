//
//  MakeSurveyViewController.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2017. 12. 31..
//

import UIKit

class MakeSurveyViewController: UIViewController {
    var selected = "객관식"
    let answerTypes = ["객관식","A/B","찬/반"/*,"직선"*/]
    func test(){
        self.dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var makeBtn: UIButton!
    @IBOutlet weak var answerTypePicker: UIPickerView!
    @IBOutlet weak var subView: UIView!
    @IBAction func makeBtn(_ sender: Any) {
        // 다음페이지로 넘어가기
        print(selected)//selected를 넘겨 줘야겠지
        
        performSegue(withIdentifier: "toMoreMakeSurvey", sender: makeBtn)
    }
    /*
    func pickImage(){
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            let picker = UIImagePickerController()
            picker.delegate = self
            picker.allowsEditing = false
            picker.sourceType = .photoLibrary
            present(picker, animated: true, completion: nil)
        }
        print(selected)
    }
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        answerTypePicker.dataSource = self
        answerTypePicker.delegate = self
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
        return answerTypes[row]
    }
    
    func chooseSurveyType(){
        switch selected {
        case "객관식" :
            let sideView = SurveyTypeView1.instanceFromNib()
            setSideView(sideView: sideView)
            break
        case "A/B" :
            let sideView = SurveyTypeView2.instanceFromNib()
            setSideView(sideView: sideView)
            break
        case "찬/반" :
            let sideView = SurveyTypeView3.instanceFromNib()
            setSideView(sideView: sideView)
            break
        /*case
            "직선" :
            let sideView = SurveyTypeView4.instanceFromNib()
            setSideView(sideView: sideView)
            break
             */
        default:
            print("error has occured")
            break
        }
    }
}




