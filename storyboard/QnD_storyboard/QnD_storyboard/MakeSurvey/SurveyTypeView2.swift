//
//  SurveyTypeView2.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 1..
//

import UIKit

class SurveyTypeView2: UIView {

    @IBOutlet weak var ImageA: UIImageView!
    @IBOutlet weak var ImageB: UIImageView!
    
    @IBAction func selectImageA(_ sender: Any) {
    }
    @IBAction func selectImageB(_ sender: Any) {
    }
    
    let alert = UIAlertController(title: "사진 소스를 선택해주세요", message: nil, preferredStyle: .actionSheet)
    let imagePicker:UIImagePickerController = UIImagePickerController()
    /*
    func setImagePicker(){
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        let photoLibraryAction = UIAlertAction(title: "사진 앨범", style: .default) { (action:UIAlertAction) in
            self.imagePicker.sourceType = .photoLibrary
            self.imagePicker.delegate = self as! UIImagePickerControllerDelegate & UINavigationControllerDelegate
            self.imagePicker.allowsEditing = true
            present(self.imagePicker, animated: true, completion: {
                print("이미지 피커 나옴")
            })
            
        }
        alert.addAction(cancelAction)
        alert.addAction(photoLibraryAction)
        
    }*/
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
extension SurveyTypeView2 :  UIImagePickerControllerDelegate {
    
}
