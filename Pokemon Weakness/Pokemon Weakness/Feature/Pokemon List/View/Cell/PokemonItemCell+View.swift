//
//  PokemonItemCell+View.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

extension PokemonItemCell: PokemonItemCellView {
    
    func setPokemonName(name: String) {
        pokemonNameLabel.text = name
    }
    
    func setPokemonNumber(number: String) {
        pokemonNumberLabel.text = number
    }
    
    func setImage(image: UIImage) {
        pokemonImageView.image = image
    }
    
    func setColor(color: UIColor) {
        topContainerView.backgroundColor = color
    }
}