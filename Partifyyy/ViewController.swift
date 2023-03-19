//
//  ViewController.swift
//  Partifyyy
//
//  Created by OM KAMBLE on 13/03/23.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {
    

    @IBOutlet weak var passwordForR: UITextField!
    @IBOutlet weak var emailID: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func registerButton(_ sender: UIButton) {
        
        if let password = passwordForR.text, let email = emailID.text{
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e)
                } else{
                    self.performSegue(withIdentifier: "playSound", sender: self)
                }
            }
        }
        
    }
    
}

