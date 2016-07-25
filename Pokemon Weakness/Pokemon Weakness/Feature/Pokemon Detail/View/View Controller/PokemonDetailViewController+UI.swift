//
//  PokemonDetailViewController+UI.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 25/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

extension PokemonDetailViewController {
 
    override func configureUI() {
        super.configureUI()
        
        collectionView?.registerNib(
            WeaknessItemCell.self
        )
    }
}