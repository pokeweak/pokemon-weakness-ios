//
//  Assembly+Navigation.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 24/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

extension Assembly: PokemonDetailNavigationRouterProvider {
    
    func pokemonDetailNavigation(pokemon: PokemonViewModel) -> PokemonDetailNavigationRouter {
        return PokemonDetailNavigationRouter(
            pokemon: pokemon,
            pokemonDetailViewControllerProvider: self
        )
    }
}