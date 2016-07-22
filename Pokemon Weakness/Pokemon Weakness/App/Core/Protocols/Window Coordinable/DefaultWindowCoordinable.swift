//
//  DefaultWindowCoordinable.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

struct DefaultWindowCoordinable: WindowCoordinable {
    
    private let pokemonListViewControllerProvider: PokemonListViewControllerProvider
    
    init(pokemonListViewControllerProvider: PokemonListViewControllerProvider) {
        self.pokemonListViewControllerProvider = pokemonListViewControllerProvider
    }
    
    func coordinate(window: UIWindow?) {
        
        let pokemonListViewController = pokemonListViewControllerProvider.pokemonListViewController()
        
        window?.rootViewController = pokemonListViewController
        window?.makeKeyAndVisible()
    }
}