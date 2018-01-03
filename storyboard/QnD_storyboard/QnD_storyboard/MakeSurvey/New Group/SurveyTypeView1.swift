//
//  SurveyTypeView1.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 1..
//

import UIKit

class SurveyTypeView1: UIView {
    var surveydata = SurveyType1()
    //MARK :- checklist
    var multiplestate = false
    @IBOutlet weak var multipleselectionBtn: UIButton!
    @IBAction func multipleselctionBtn(_ sender: Any) {
        if(multiplestate == false){
            self.multiplestate = true
            multipleselectionBtn.setImage(#imageLiteral(resourceName: "test"), for: UIControlState.normal)
        }
        else {
            self.multiplestate = false
            multipleselectionBtn.setImage(#imageLiteral(resourceName: "test2"), for: UIControlState.normal)
        }
    }
    
    
    //MARK :- Table
    @IBOutlet weak var optionTable: UITableView!
    @IBAction func addBtn(_ sender: Any) {
        surveydata.count += 1
        surveydata.options.append("")
        optionTable.reloadData()
    }
    @IBOutlet weak var addBtn: UIButton!
    
    //MARK :- Load View
    class func instanceFromNib() -> UIView {
       return UINib(nibName: "SurveyTypeView1", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
    
    override func layoutSubviews() {
        optionTable.delegate = self
        optionTable.dataSource = self
        // you can update your label's text or etc.
    }

}

extension SurveyTypeView1 : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return surveydata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: SurveyOptionTableViewCell! = tableView.dequeueReusableCell(withIdentifier: "SurveyOptionTableViewCell") as? SurveyOptionTableViewCell
        if cell == nil {
            tableView.register(UINib(nibName: "SurveyOptionTableViewCell", bundle: nil), forCellReuseIdentifier:"SurveyOptionTableViewCell")
            cell = tableView.dequeueReusableCell(withIdentifier: "SurveyOptionTableViewCell") as? SurveyOptionTableViewCell
        }
        cell.row = indexPath.row
        cell.numLabel?.text = "\(indexPath.row+1)."
        cell.optionField?.placeholder = "객관식\(indexPath.row+1)"
        
        return cell
    }
    
}
