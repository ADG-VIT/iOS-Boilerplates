//
//  RestuarantTableViewCell.swift
//  FoodPin
//
//  Created by Aritro Paul on 13/02/18.
//  Copyright © 2018 NotACoder. All rights reserved.
//

import UIKit

class RestuarantTableViewCell: UITableViewCell {
    @IBOutlet weak var mainStack: UIStackView!
    @IBOutlet weak var overlay: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var expandedName: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var expandedLocation: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var expandedType: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
