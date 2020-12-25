//
//  LogoutViewController.swift
//  FirebaseProject
//
//  Created by Mounika Reddy on 24/12/20.
//  Copyright © 2020 Mounika Reddy. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LogoutViewController: UIViewController {

    
    @IBOutlet weak var ststusLabel: UILabel!
    
    var msg:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ststusLabel.text = msg
        // Do any additional setup after loading the view.
    }
    

         @IBAction func logoutTapped(_ sender: Any) {
            
            if Auth.auth().currentUser != nil {
                do {
                    try Auth.auth().signOut()
                    let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignUp")
                    present(vc, animated: true, completion: nil)
                    
                } catch let error as NSError {
                    print(error.localizedDescription)
                }
            }

            
     }
     

}
