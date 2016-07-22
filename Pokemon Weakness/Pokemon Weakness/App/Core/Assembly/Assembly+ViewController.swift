//
//  Assembly+ViewController.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

extension Assembly: PokemonListViewControllerProvider {
    
    func pokemonListViewController() -> PokemonListViewController {
        return PokemonListViewController(
            pokemonListPresenter: getPokemonListPresenter()
        )
    }
}