//
//  SurveyTypeView2.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. c1..
//

import UIKit

class SurveyTypeView2: UIView {
    var AorB = 0
    let imagePicker:UIImagePickerController = UIImagePickerController()
    var Type2 = SurveyType2()
    
    @IBOutlet weak var imageA: UIImageView!
    @IBOutlet weak var imageB: UIImageView!
    @IBOutlet weak var textA: UITextField!
    @IBOutlet weak var textB: UITextField!
    
    @IBAction func changeImageA(_ sender: Any) {
        AorB = 0
        alert()
    }
    
    @IBAction func changeImageB(_ sender: Any) {
        AorB = 1
        alert()
    }
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "SurveyTypeView2", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
    
    override func layoutSubviews() {
        textA.returnKeyType = .done
        textA.delegate = self
        self.textA.endEditing(true)
        
        textB.returnKeyType = .done
        textB.delegate = self
        self.textB.endEditing(true)
        
    }
    
    func dismiss(){
        var topVC = UIApplication.shared.keyWindow?.rootViewController
        while((topVC!.presentedViewController) != nil){
            topVC = topVC!.presentedViewController
        }
        topVC?.dismiss(animated: true, completion: nil)
    }
    
    func alert(){
        let alert = UIAlertController(title: "사진 소스를 선택해주세요", message: nil, preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        var topVc = UIApplication.shared.keyWindow?.rootViewController
        
        let photoLibraryAction = UIAlertAction(title: "사진 앨범", style: .default) { (action:UIAlertAction) in
            self.imagePicker.sourceType = .photoLibrary
            self.imagePicker.delegate = self
            self.imagePicker.allowsEditing = true
            topVc?.present(self.imagePicker, animated: true, completion: nil)
            
        }
        alert.addAction(cancelAction)
        alert.addAction(photoLibraryAction)

        topVc?.present(alert, animated: true, completion: nil)
    }
    

}


extension SurveyTypeView2: UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
    //MARK: UIImagePickerDelegate Methods
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerEditedImage] as? UIImage{
            
            if (AorB == 0){
                imageA.image = image
                Type2.img1 = image
            }
            else {
                imageB.image = image
                Type2.img2 = image
            }
            //self.profileImageView.image = originalImage
        }
        dismiss()
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss()
    }
    
}

extension SurveyTypeView2 : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.textA.endEditing(true)
        self.textB.endEditing(true)
        return false
    }
}
