//
//  MakeMoreSurveyViewController.swift
//  QnD_storyboard
//
//  Created by 정예지 on 2018. 1. 1..
//

import UIKit

class MakeMoreSurveyViewController: UIViewController {
    var state = 1
    
    @IBOutlet weak var nonameBtn: UIButton!
    
    @IBAction func lockBtn(_ sender: Any) {
        AlertCoin()
    }
    @IBAction func nonameBtn(_ sender: Any) {
        if (state == 1 ){
            state = 0
            nonameBtn.setImage(#imageLiteral(resourceName: "test2"), for: UIControlState.normal)
        }
        else {
            state = 1
            nonameBtn.setImage(#imageLiteral(resourceName: "test"), for: UIControlState.normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func AlertCoin(){
        let alert = UIAlertController(title: "20 코인이 필요합니다.", message: nil, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "네", style: .default, handler: nil)
        let cancelAction = UIAlertAction(title: "아니요", style: .cancel, handler: nil)
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
