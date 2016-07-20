//
//  PokemonItemCell.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

class PokemonItemCell: UICollectionViewCell, SizableCollectionCell {

    static var size: CGSize {
        return CGSize(
            width: 112,
            height: 146
        )
    }
    
    @IBOutlet weak var topContainerView: UIView!
    @IBOutlet weak var pokemonImageView: UIImageView!
 
    @IBOutlet weak var pokemonNumberLabel: UILabel!
    @IBOutlet weak var pokemonNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureUI()
    }
}