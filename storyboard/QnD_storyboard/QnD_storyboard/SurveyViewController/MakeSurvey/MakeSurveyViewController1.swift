//
//  DoSurveyViewController1.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 5..
//

import UIKit

class MakeSurveyViewController1: UIViewController {
    var surveydata = SurveyType1()
    
    @IBOutlet weak var optionTable: UITableView!
    @IBOutlet weak var multipleSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //VCs.append(storyboard!.instantiateViewController(withIdentifier: "MakeSurveyViewController1"))
        //VCs.append(storyboard!.instantiateViewController(withIdentifier: "MakeSurveyViewController2"))
        
        optionTable.delegate = self
        optionTable.dataSource = self
        optionTable.isScrollEnabled = false;
        optionTable.keyboardDismissMode = .interactive
        optionTable.allowsSelection = false;
    }
    
    
    
    
}

extension MakeSurveyViewController1 : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return surveydata.options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: SurveyOptionTableViewCell! = tableView.dequeueReusableCell(withIdentifier: "SurveyOptionTableViewCell") as? SurveyOptionTableViewCell
        if cell == nil {
            tableView.register(UINib(nibName: "SurveyOptionTableViewCell", bundle: nil), forCellReuseIdentifier:"SurveyOptionTableViewCell")
            cell = tableView.dequeueReusableCell(withIdentifier: "SurveyOptionTableViewCell") as? SurveyOptionTableViewCell
        }
        
       // cell.optionField.delegate = self as! UITextFieldDelegate
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
