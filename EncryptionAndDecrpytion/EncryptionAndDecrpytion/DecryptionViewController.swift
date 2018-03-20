//
//  DecryptionViewController.swift
//  EncryptionAndDecrpytion
//
//  Created by Aritro Paul on 18/01/18.
//  Copyright © 2018 NotACoder. All rights reserved.
//

import UIKit

class DecryptionViewController: UIViewController {

    @IBOutlet weak var decryptTextField: UITextField!
    @IBOutlet weak var decrypt: UIButton!
    @IBOutlet weak var decryptionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func decryptThis(_ sender: Any) {
        decryptionLabel.text = decryptionMessage()
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
    
    
    func decryptionMessage() -> String{
        let inputText = decryptTextField.text?.uppercased()
        var decryptedText = ""
        var decryptedChar:Character
        var flag = 0
        let a = 3
        let b = 2
        var a_inv = 0
        for i in 0..<26{
                flag = (a * i) % 26;
                if (flag == 1)
                {
                    a_inv = i;
                }
        }
        for i in inputText!{
            decryptedChar = findAlphabet(asciiVal: ((a_inv*findAsciiValue(inputChar: i)-b) % 26) + 65)
            decryptedText.append(decryptedChar)
        }
         var stringAarray = Array(globalOriginalMessage)
         var stringBarray = Array(decryptedText)
         for i in 0...stringBarray.count-1{
         if (stringAarray[i] != stringBarray[i]) {
         stringBarray[i] = " "
         }
         }
        decryptedText =  String(stringBarray)
        return decryptedText
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
