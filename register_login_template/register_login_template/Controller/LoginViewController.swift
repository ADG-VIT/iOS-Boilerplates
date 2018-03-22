//
//  LoginViewController.swift
//  register_login_template
//
//  Created by Sarvad shetty on 1/18/18.
//  Copyright © 2018 Sarvad shetty. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    //MARK: Outlets
    
    
    @IBOutlet weak var logButton: UIButton!
    @IBOutlet weak var emailId: UITextField!
    @IBOutlet weak var pass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    //MARK: logging in
   
    @IBAction func logPressed(_ sender: Any) {
        logButton.isEnabled = false
        Auth.auth().signIn(withEmail: emailId.text!, password: pass.text!) { (user, error) in
            if (error != nil){
                print(error!)
            }
            else{
                print("Login successfull")
                self.performSegue(withIdentifier: "goToChat", sender: self)
                self.logButton.isEnabled = true
            }
        }
    }
    
}
