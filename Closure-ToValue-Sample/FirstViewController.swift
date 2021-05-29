//
//  ViewController.swift
//  Closure-ToValue-Sample
//
//  Created by 木元健太郎 on 2021/05/26.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!{
        didSet{
            label.text = "0"
            
        }
    }
   
    
    @IBAction func nextButton(_ sender: UIButton) {
    
            let secondStoryboard = UIStoryboard(name: "Second", bundle: nil)
            let secondVC = secondStoryboard.instantiateInitialViewController() as!SecondViewController
        
            
        secondVC.completion = { CountModel in
            print("ーーーー渡されたよーーーーーーー")
            self.label.text = CountModel.count.description
    }
        
        let nav = self.navigationController!
        nav.pushViewController(secondVC, animated: true)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
 }

}
