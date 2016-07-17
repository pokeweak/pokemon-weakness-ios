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

    private let pokemonListPresenter: PokemonListPresenter
    
    init(pokemonListPresenter: PokemonListPresenter) {
        self.pokemonListPresenter = pokemonListPresenter
        
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