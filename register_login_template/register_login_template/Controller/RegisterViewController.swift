//
//  RegisterViewController.swift
//  register_login_template
//
//  Created by Sarvad shetty on 1/18/18.
//  Copyright © 2018 Sarvad shetty. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    //MARK: Outlets
    
    @IBOutlet weak var regButton: UIButton!
    @IBOutlet weak var emailId: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    //MARK: Registering..
    
 
    @IBAction func regPressed(_ sender: Any) {
        regButton.isEnabled = false
        
        Auth.auth().createUser(withEmail: emailId.text!, password: password.text!) { (user, error) in
            if error != nil {
                print("error registering , \(error!)")
            }
            else{
                print("registration successfull")
                self.performSegue(withIdentifier: "goToChat", sender: self)
                self.regButton.isEnabled = true
            }
        }
        
    }
    
}
