//
//  PokemonDetailViewController+View.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 25/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

extension PokemonDetailViewController: PokemonDetailView {

    func configureDetail(with pokemon: PokemonViewModel) {
        
        pokemonImageView.image = UIImage(named: pokemon.image)
        pokemonBackgroundView.backgroundColor = pokemon.color.alpha(0.8)
        pokemonNumberLabel.text = pokemon.number
        pokemonNameLabel.text = pokemon.name
    }
}