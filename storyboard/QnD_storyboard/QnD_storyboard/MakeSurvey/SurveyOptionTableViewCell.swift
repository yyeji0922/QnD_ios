//
//  SurveyOptionTableViewCell.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 2..
//

import UIKit

class SurveyOptionTableViewCell: UITableViewCell {
    var row = 0
    @IBOutlet weak var optionField: UITextField!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func layoutSubviews() {
        
        self.optionField.delegate = self
        self.optionField.returnKeyType = .done
        self.optionField.endEditing(true)
        // you can update your label's text or etc.
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}


extension SurveyOptionTableViewCell : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.optionField.endEditing(true)
        return false
    }
}


