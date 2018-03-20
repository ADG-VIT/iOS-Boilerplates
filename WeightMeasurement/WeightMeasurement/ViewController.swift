//
//  ViewController.swift
//  WeightMeasurement
//
//  Created by Aritro Paul on 23/12/17.
//  Copyright © 2017 NotACoder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forceWeight: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first{
            if #available(iOS 9.0, *){
                if traitCollection.forceTouchCapability == UIForceTouchCapability.available{
                    if touch.force >= touch.maximumPossibleForce {
                        forceWeight.text = "385+ grams"
                    }
                    else{
                        let forcePercent = touch.force/touch.maximumPossibleForce
                        let grams = Int(forcePercent*385)
                        forceWeight.text = "\(grams) grams"
                    }
                }
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        forceWeight.text = " 0 grams "
    }
}

