//
//  WeaknessItemCell+View.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 25/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

extension WeaknessItemCell: WeaknessItemCellView {
    
    func setWeakness(weakness: String) {
        weaknessLabel.text = weakness.uppercaseString
    }
    
    func setWeaknessColor(color: UIColor) {
        contentView.backgroundColor = color
    }
}