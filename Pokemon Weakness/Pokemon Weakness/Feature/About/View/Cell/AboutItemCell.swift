//
//  AboutItemCell.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 29/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

class AboutItemCell: UICollectionViewCell {

    static var size: CGSize {
        return CGSize(
            width: 320,
            height: 90
        )
    }
    
    @IBOutlet weak var memberBackgroundView: UIView!
    
    @IBOutlet weak var pokeballImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        applyShadow()
        applyCornerRadius(4)
        memberBackgroundView.applyCornerRadius(4)
    }
}
