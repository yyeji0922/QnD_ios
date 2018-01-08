//
//  MakeSurveyViewController.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2017. 12. 31..
//

import UIKit

class MakeSurveyViewController: UIViewController {
    var selected = 0
    var childviewcontrollers = [UIViewController]()
    
    var bb1 = ToggleImageButton(); var bb2 = ToggleImageButton(); var bb3 = ToggleImageButton()
    var btnset = Toggleset()
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var subtitleField: UITextField!
    
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var makeBtn: UIBarButtonItem!
    
    @IBAction func b1(_ sender: Any) {
        selected = 0; btnset.clicked(whichone: selected)
       }
    @IBAction func b2(_ sender: Any) {
        selected = 1; btnset.clicked(whichone: selected)
        
       }
    @IBAction func b3(_ sender: Any) {
        selected = 2; btnset.clicked(whichone: selected)
        
        }
    
    @IBAction func makeBtn(_ sender: Any) {
        performSegue(withIdentifier: "toMoreMakeSurvey", sender: makeBtn)
    }
    
    override func viewDidLoad() {
   
        super.viewDidLoad()
        
        /* mainView 의 그림자 설정 */
        dropShadow(v: mainView,color: .black, opacity: 0.2, offSet: CGSize(width: -1, height: 1), radius: 3, scale: true)
        
        /* button 설정 */
        btnsetting()
        
        /* textfield 설정*/
        textfieldsetting(t: titleField); textfieldsetting(t: subtitleField);
        
        /*
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var vc1 = storyboard.instantiateViewController(withIdentifier: "MakeSurveyViewController1") as! MakeSurveyViewController1
        var vc2 = storyboard.instantiateViewController(withIdentifier: "MakeSurveyViewController2") as! MakeSurveyViewController2
        var vc3 = storyboard.instantiateViewController(withIdentifier: "MakeSurveyViewController3") as! MakeSurveyViewController3*/
        //vc1.view.frame = containerView.frame
        //containerView.addSubview(vc1.view)
    }
    
    
    func btnsetting(){
        bb1.setToggleBtn(clickedImg: #imageLiteral(resourceName: "test2"), unclickedImg: #imageLiteral(resourceName: "test"), btn: b1, type: 0)
        bb2.setToggleBtn(clickedImg: #imageLiteral(resourceName: "test2"), unclickedImg: #imageLiteral(resourceName: "test"), btn: b2, type: 1)
        bb3.setToggleBtn(clickedImg: #imageLiteral(resourceName: "test2"), unclickedImg: #imageLiteral(resourceName: "test"), btn: b3, type: 2)
        btnset.setset(b1: self.bb1, b2: self.bb2, b3: self.bb3)
    }
    func textfieldsetting(t: UITextField){
        t.delegate = self
        t.returnKeyType = .done
        t.endEditing(true)
    }
    
    func chooseSurveyType(selected :Int){
        switch selected {
        case 0 :
            break
        case 1 :
            break
        case 2 :
            break
        default:
            print("error has occured")
            break
        }
    }
 
}

extension MakeSurveyViewController : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.subtitleField.endEditing(true)
        self.titleField.endEditing(true)
        return false
    }
}


