//
//  ViewController.swift
//  collection_view_test
//
//  Created by Sarvad shetty on 2/12/18.
//  Copyright © 2018 Sarvad shetty. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    //MARK: Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: Variables
    let menu = ["1","2","3","4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    
   
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        
        return menu.count
    }

    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath) as! CustomCollectionViewCell
        cell.imageCell.image = UIImage(named: menu[indexPath.row])
        cell.labelCell.text = menu[indexPath.row]
        return cell
    }

    
}

