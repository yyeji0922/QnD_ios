//
//  SurveyListViewController.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 2..
//

import UIKit

class SurveyListViewController: UIViewController {
    var survey_list = ["1번 설문지","2번 설문지"]
    @IBOutlet weak var surveyListTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        surveyListTable.delegate = self
        surveyListTable.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
extension SurveyListViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return survey_list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: SurveyListTableViewCell! = tableView.dequeueReusableCell(withIdentifier: "SurveyListTableViewCell") as? SurveyListTableViewCell
        if cell == nil {
            tableView.register(UINib(nibName: "SurveyListTableViewCell", bundle: nil), forCellReuseIdentifier:"SurveyListTableViewCell")
            cell = tableView.dequeueReusableCell(withIdentifier: "SurveyListTableViewCell") as? SurveyListTableViewCell
        }
        //cell.row = indexPath.row
        //cell.numLabel?.text = "\(indexPath.row+1)."
        //cell.optionField?.placeholder = "객관식\(indexPath.row+1)"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "toDoSurvey", sender: UITableViewCell())
    }
    
    
}
