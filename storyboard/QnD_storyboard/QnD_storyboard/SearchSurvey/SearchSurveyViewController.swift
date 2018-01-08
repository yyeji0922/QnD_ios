//
//  SearchSurveyViewController.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 5..
//

import UIKit
//검색 시 table 없애기
class SearchSurveyViewController: UIViewController {
    var survey_list = ["2","1","3"]
    var isSearching = false
    
    @IBOutlet weak var donesurveyListTable: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        donesurveyListTable.delegate = self
        donesurveyListTable.dataSource = self
        donesurveyListTable.keyboardDismissMode = .interactive
        donesurveyListTable.separatorStyle =  UITableViewCellSeparatorStyle.none
        
        searchBar.delegate = self
        //searBar.returnKeyType =
        self.searchBar.setImage(#imageLiteral(resourceName: "test"), for: UISearchBarIcon.search, state: UIControlState.normal)
        searchBar.backgroundImage = UIImage(named: "test2")
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

extension SearchSurveyViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isSearching {
            return 0
        }
            return survey_list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: SurveyListTableViewCell! = tableView.dequeueReusableCell(withIdentifier: "SurveyListTableViewCell") as? SurveyListTableViewCell
        if cell == nil {
            tableView.register(UINib(nibName: "SurveyListTableViewCell", bundle: nil), forCellReuseIdentifier:"SurveyListTableViewCell")
            cell = tableView.dequeueReusableCell(withIdentifier: "SurveyListTableViewCell") as? SurveyListTableViewCell
        }
        cell.selectionStyle = .none// HIGHLIGHT 엊ㅅ애기
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "toDoneSurvey", sender: UITableViewCell())
    }
    
    
}
extension SearchSurveyViewController : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if (searchBar.text == nil || searchBar.text == ""){
            isSearching = false
            view.endEditing(true)
            donesurveyListTable.reloadData()
        }
        else {
            isSearching = true
            donesurveyListTable.reloadData()
        }
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        isSearching = false
        donesurveyListTable.reloadData()
    }
}

