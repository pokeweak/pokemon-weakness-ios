//
//  PokemonDetailViewController+View.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 25/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

private struct PokemonDetailViewConfiguration {
    static let windowHeightForMinimalItems = 158
    static let windowHeightForMaximalItems = 235
    static let minimalItems = 3
    static let maximalItems = 7
}

extension PokemonDetailViewController: PokemonDetailView {

    func configureDetail(with pokemon: PokemonViewModel) {
        
        pokemonImageView.image = UIImage(named: pokemon.image)
        pokemonBackgroundView.backgroundColor = pokemon.color
        pokemonNumberLabel.text = pokemon.number
        pokemonNameLabel.text = pokemon.name
        
        if pokemon.weaknesses.count <= PokemonDetailViewConfiguration.minimalItems {
            pokemonBackgroundViewBottomLayoutConstraint.constant = CGFloat(PokemonDetailViewConfiguration.windowHeightForMinimalItems)
        }
        
        if pokemon.weaknesses.count >= PokemonDetailViewConfiguration.maximalItems {
            pokemonBackgroundViewBottomLayoutConstraint.constant = CGFloat(PokemonDetailViewConfiguration.windowHeightForMaximalItems)
        }
    }
}