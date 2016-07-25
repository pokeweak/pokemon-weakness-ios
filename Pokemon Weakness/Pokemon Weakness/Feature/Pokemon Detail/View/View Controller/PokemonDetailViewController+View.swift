//
//  PokemonDetailViewController+View.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 25/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

private struct PokemonDetailViewConfiguration {
    static let windowHeightForMinimalItems = 160
    static let minimalItems = 3
}

extension PokemonDetailViewController: PokemonDetailView {

    func configureDetail(with pokemon: PokemonViewModel) {
        
        pokemonImageView.image = UIImage(named: pokemon.image)
        pokemonBackgroundView.backgroundColor = pokemon.color.alpha(0.8)
        pokemonNumberLabel.text = pokemon.number
        pokemonNameLabel.text = pokemon.name
        
        if pokemon.weaknesses.count <= PokemonDetailViewConfiguration.minimalItems {
            pokemonBackgroundViewBottomLayoutConstraint.constant = CGFloat(PokemonDetailViewConfiguration.windowHeightForMinimalItems)
            view.layoutIfNeeded()
        }
    }
}