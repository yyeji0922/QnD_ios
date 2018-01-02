//
//  SurveyOptionTableViewCell.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 2..
//

import UIKit

class SurveyOptionTableViewCell: UITableViewCell {
    var row = 0
    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var optionField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
