//
//  ViewController.swift
//  FoodTracker
//
//  Created by Aritro Paul on 22/12/17.
//  Copyright © 2017 NotACoder. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*let toolbar = UIToolbar()
        toolbar.barStyle = .blackTranslucent
        nameTextField.inputAccessoryView = toolbar
        toolbar.sizeToFit()
        
        let done = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneAction))
        
        let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        toolbar.setItems([space,done], animated: true)
        
        toolbar.isUserInteractionEnabled = true
        */
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
    }
    
    //MARK: UITextFieldDelegate
    //chill bro.. run kar
    
    /*override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @objc func doneAction()
    {
        nameTextField.resignFirstResponder()
        mealNameLabel.text = nameTextField.text
    }*/
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    

    //MARK: Actions
    @IBAction func setDefaultText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
}
