//
//  DoSurveyViewController1.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 5..
//

import UIKit

class DoSurveyViewController1: UIViewController {
    var options =  ["", "", "",""]
    
    @IBOutlet weak var optionTable: UITableView!
    @IBOutlet weak var multipleSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        optionTable.delegate = self
        optionTable.dataSource = self
        // Do any additional setup after loading the view.
    }
    

    

}

extension DoSurveyViewController1 : UITableViewDataSource, UITableViewDelegate {
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
