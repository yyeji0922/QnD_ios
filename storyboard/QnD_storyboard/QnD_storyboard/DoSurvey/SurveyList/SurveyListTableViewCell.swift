//
//  SurveyListTableViewCell.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 2..
//

import UIKit

class SurveyListTableViewCell: UITableViewCell {

    var likestate = false
    @IBAction func likeBtn(_ sender: Any) {
        if(likestate == false){
            self.likestate = true
            likeBtn.setImage(#imageLiteral(resourceName: "test"), for: UIControlState.normal)
        }
        else {
            self.likestate = false
            likeBtn.setImage(#imageLiteral(resourceName: "test2"), for: UIControlState.normal)
        }
    }
    
    @IBOutlet weak var likeBtn: UIButton!
    @IBOutlet weak var sideCellView: UIView!
    @IBOutlet weak var mainCellView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        dropShadow(v: mainCellView, color: .black, opacity: 0.2, offSet: CGSize(width: -1, height: 1), radius: 3, scale: true)
        dropShadow(v: sideCellView, color: .black, opacity: 0.2, offSet: CGSize(width: -1, height: 1), radius: 3, scale: true)
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
