//
//  ChatViewController.swift
//  register_login_template
//
//  Created by Sarvad shetty on 1/18/18.
//  Copyright © 2018 Sarvad shetty. All rights reserved.
//

import UIKit
import Firebase

class ChatViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    

    //MARK: Log out function
    @IBAction func logOut(_ sender: UIBarButtonItem) {
        do{
        try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        }
        catch{
            print("error while signing out \(error)")
        }
    }
    
}


// Always remember to import Firebase while dealing with Firebase related functions,objects etc.
