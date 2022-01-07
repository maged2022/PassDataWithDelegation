//
//  SecondViewController.swift
//  PassDataWithDelegation
//
//  Created by s on 07/01/2022.
//

import UIKit

class SecondViewController: UIViewController,UserInfo {
    
   

    @IBOutlet weak var labelName: UILabel!
   // var name:String?
    
    var vc1 = FirstViewController()
    func userInfo(name: String) {
        DispatchQueue.main.async {
            self.labelName.text =  name
        }
          
        
       
    }
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vc1.delegateUserInfo = self
        //labelName.text =  name
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
