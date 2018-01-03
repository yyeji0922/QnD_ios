//
//  DoSurveyTypeView1.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 2..
//

import UIKit

class DoSurveyTypeView1: UIView {
    var options = ["option1", "option2"]
    @IBOutlet weak var titleLabel: UILabel!
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "DoSurveyTypeView1", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
    @IBAction func cancelBtn(_ sender: Any) {
        
    }
    @IBOutlet weak var optionTable: UITableView!
    
    @IBOutlet weak var submitBtn: UIButton!
    @IBAction func submitBtn(_ sender: Any) {
        let t = DoSurveyViewController()
        t.selected = 4 
        t.chooseSurveyType()
    }
  
    override func layoutSubviews() {
        optionTable.delegate = self
        optionTable.dataSource = self
        // you can update your label's text or etc.
    }


}

extension DoSurveyTypeView1 : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: DoSurveyOptionTableViewCell! = tableView.dequeueReusableCell(withIdentifier: "DoSurveyOptionTableViewCell") as?  DoSurveyOptionTableViewCell
        if cell == nil {
            tableView.register(UINib(nibName: "DoSurveyOptionTableViewCell", bundle: nil), forCellReuseIdentifier:"DoSurveyOptionTableViewCell")
            cell = tableView.dequeueReusableCell(withIdentifier: "DoSurveyOptionTableViewCell") as? DoSurveyOptionTableViewCell
        }
        
        cell.row = indexPath.row
        cell.numLabel?.text = "\(indexPath.row+1)."
        cell.optionLabel?.text = options[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected \(indexPath.row)")
    }
    
    
    
}
