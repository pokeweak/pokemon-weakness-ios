//
//  WeaknessItemCell.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 25/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

class WeaknessItemCell: UICollectionViewCell {

    @IBOutlet weak var weaknessLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureUI()
    }
}
