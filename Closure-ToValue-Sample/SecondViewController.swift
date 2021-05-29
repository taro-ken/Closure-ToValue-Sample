//
//  SecondViewController.swift
//  Closure-ToValue-Sample
//
//  Created by 木元健太郎 on 2021/05/26.
//

import UIKit

class SecondViewController: UIViewController{
   
    
   private var countmodel = CountModel.init(count: 0)
    var completion:((CountModel)->Void)?
    
    @IBOutlet weak var countLabel: UILabel!{
        didSet{
            countLabel.text = countmodel.count.description
        }
    }

    @IBAction func countButtun(_ sender: UIButton) {
        countmodel.count = countmodel.count + 1
        countLabel.text = countmodel.count.description
        print(countmodel)
    }
    
    
    @IBAction func addButton(_ sender: Any) {
        tap()
        self.navigationController?.popViewController(animated: true)
        
    }
    
    //クロージャー関数
    func tap(){
        print("tapしたよ")
        print(countmodel)
       completion?(countmodel)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
       
        }
  
      
    }
    
    
