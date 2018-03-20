//
//  RestuarantDetailedViewController.swift
//  FoodPin
//
//  Created by Aritro Paul on 14/02/18.
//  Copyright © 2018 NotACoder. All rights reserved.
//

import UIKit

class RestuarantDetailedViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var restuarantImage = ""
    var name = ""
    var location = ""
    var type = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: restuarantImage)
        imageView.clipsToBounds = true
        nameLabel.text = name
        locationLabel.text = location
        typeLabel.text = type
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
