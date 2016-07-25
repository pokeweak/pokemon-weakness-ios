//
//  PokemonDetailNavigationRouter.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 24/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit
import PopupDialog

protocol PokemonDetailNavigationRouterProvider {
    func pokemonDetailNavigation(pokemon: PokemonViewModel) -> PokemonDetailNavigationRouter
}

struct PokemonDetailNavigationRouter: NavigationRouter {
    
    private let pokemon: PokemonViewModel
    private let pokemonDetailViewControllerProvider: PokemonDetailViewControllerProvider
    
    init(pokemon: PokemonViewModel,
         pokemonDetailViewControllerProvider: PokemonDetailViewControllerProvider)
    {
        self.pokemon = pokemon
        self.pokemonDetailViewControllerProvider = pokemonDetailViewControllerProvider
    }
    
    func navigate(from: UIViewController) {
        
        let pokemonDetailViewController = pokemonDetailViewControllerProvider.pokemonDetailViewController(pokemon)
        
        let popup = PopupDialog(
            viewController: pokemonDetailViewController,
            buttonAlignment: .Horizontal,
            transitionStyle: .BounceUp,
            gestureDismissal: true
        )
        
        from.present(popup)
    }
}