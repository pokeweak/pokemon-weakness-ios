//
//  PokemonListViewController+View.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

extension PokemonListViewController: PokemonListView {
    
    func showDetail(pokemon: PokemonViewModel) {
        searchBar.resignFirstResponder()
        pokemonDetailNavigationRouterProvider.pokemonDetailNavigation(pokemon).navigate(self)
    }
}