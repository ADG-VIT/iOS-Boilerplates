//
//  EncryptionViewController.swift
//  EncryptionAndDecrpytion
//
//  Created by Aritro Paul on 18/01/18.
//  Copyright © 2018 NotACoder. All rights reserved.
//

import UIKit

class EncryptionViewController: UIViewController {

    @IBOutlet weak var generate: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func encryptThis(_ sender: Any) {
        messageLabel.text = encryptionMessage()
    }
    var alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    func findAsciiValue(inputChar:Character)->Int{
        var asciiVal = 0
        for  (i,char) in alphabet.enumerated(){
            if inputChar == char
            {
                asciiVal = i + 65
            }
            else if (inputChar == " "){
                asciiVal = 32
            }
        }
        return asciiVal
    }
    
    func findAlphabet(asciiVal:Int)->Character{
        var charNum = asciiVal - 65
        var index = alphabet.index(alphabet.startIndex, offsetBy: charNum)
        return alphabet[index]
    }
    
    func encryptionMessage() -> String{
        let inputText = inputTextField.text?.uppercased().trimmingCharacters(in: .whitespaces)
        globalOriginalMessage = inputText!
        var encryptedText = ""
        var encryptedChar:Character
        let a = 3
        let b = 6
        for i in inputText!{
            encryptedChar = findAlphabet(asciiVal: ((a*findAsciiValue(inputChar: i)+b)%26) + 65)
            encryptedText.append(encryptedChar)
        }
        return encryptedText
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
