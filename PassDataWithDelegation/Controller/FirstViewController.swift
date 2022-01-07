//
//  ViewController.swift
//  PassDataWithDelegation
//
//  Created by s on 07/01/2022.
//

import UIKit
protocol UserInfo {
    func userInfo(name:String)
}
class FirstViewController: UIViewController {
   
    var delegateUserInfo :UserInfo?
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func sendButton(_ sender: UIButton) {
        let secondVc = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        delegateUserInfo?.userInfo(name: "maged mohammed")
        //secondVc.name = "maged mohammed"
        present(secondVc, animated: true, completion: nil)
    }
    
}

