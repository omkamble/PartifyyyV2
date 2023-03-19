//
//  loggViewController.swift
//  Partifyyy
//
//  Created by OM KAMBLE on 19/03/23.
//

import UIKit
import FirebaseAuth
class loggViewController: UIViewController {

    @IBOutlet weak var emailIDD: UITextField!
    
    
    @IBOutlet weak var passwordd: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func loginButton(_ sender: UIButton) {
        if let password = passwordd.text, let email = emailIDD.text{
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
                guard self != nil else { return }
                if let e = error {
                    print(e)
                } else{
                    self?.performSegue(withIdentifier: "playySound", sender: self)
                }
            }
                
            }
        
        
    }
    
}
