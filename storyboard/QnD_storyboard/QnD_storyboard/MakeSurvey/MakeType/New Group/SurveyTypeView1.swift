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
    
    //MARK :- Load View
    class func instanceFromNib() -> UIView {
       return UINib(nibName: "SurveyTypeView1", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
    
    override func layoutSubviews() {
        optionTable.delegate = self
        optionTable.dataSource = self
        optionTable.isScrollEnabled = false;
        optionTable.keyboardDismissMode = .interactive
        optionTable.allowsSelection = false;
        
        // you can update your label's text or etc.
    }

}

extension SurveyTypeView1 : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return surveydata.options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: SurveyOptionTableViewCell! = tableView.dequeueReusableCell(withIdentifier: "SurveyOptionTableViewCell") as? SurveyOptionTableViewCell
        if cell == nil {
            tableView.register(UINib(nibName: "SurveyOptionTableViewCell", bundle: nil), forCellReuseIdentifier:"SurveyOptionTableViewCell")
            cell = tableView.dequeueReusableCell(withIdentifier: "SurveyOptionTableViewCell") as? SurveyOptionTableViewCell
        }
        cell.optionField.delegate = self
        cell.row = indexPath.row
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if(surveydata.options.count > 2){
        surveydata.options.remove(at: indexPath.row)
        let indexPathsForDelete = [indexPath]
        optionTable.deleteRows(at: indexPathsForDelete, with:.automatic)
        }
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.delete) {
            tableView.deleteRows(at: [indexPath as IndexPath], with: .fade)
            // handle delete (by removing the data from your array and updating the tableview)
        }
    }
}

extension SurveyTypeView1 : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.optionTable.endEditing(true)
        return false
    }
}
