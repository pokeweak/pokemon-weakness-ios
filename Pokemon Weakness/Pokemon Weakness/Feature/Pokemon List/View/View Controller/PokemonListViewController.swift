//
//  PokemonListViewController.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

protocol PokemonListViewControllerProvider {
    func pokemonListViewController() -> PokemonListViewController
}

class PokemonListViewController: CollectionBaseViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    let pokemonListPresenter: PokemonListPresenter
    let pokemonDetailNavigationRouterProvider: PokemonDetailNavigationRouterProvider
    let aboutNavigationRouter: AboutNavigationRouter
    
    init(pokemonListPresenter: PokemonListPresenter,
         pokemonDetailNavigationRouterProvider: PokemonDetailNavigationRouterProvider,
         aboutNavigationRouter: AboutNavigationRouter)
    {
        self.pokemonListPresenter = pokemonListPresenter
        self.pokemonDetailNavigationRouterProvider = pokemonDetailNavigationRouterProvider
        self.aboutNavigationRouter = aboutNavigationRouter
        
        super.init(
            nibName: PokemonListViewController.nibName,
            bundle: nil
        )
        
        self.pokemonListPresenter.view = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pokemonListPresenter.viewDidLoad()
    }

    required init?(coder aDecoder: NSCoder) { fatalError() }
}