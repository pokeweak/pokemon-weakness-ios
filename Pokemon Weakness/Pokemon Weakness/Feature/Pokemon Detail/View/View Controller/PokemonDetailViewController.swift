//
//  PokemonDetailViewController.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 23/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

protocol PokemonDetailViewControllerProvider {
    func pokemonDetailViewController(pokemon: PokemonViewModel) -> PokemonDetailViewController
}

class PokemonDetailViewController: CollectionBaseViewController {

    @IBOutlet weak var pokemonImageView: UIImageView!
    
    @IBOutlet weak var pokemonBackgroundView: UIView!
    
    @IBOutlet weak var pokemonNumberLabel: UILabel!
    @IBOutlet weak var pokemonNameLabel: UILabel!
    @IBOutlet weak var pokemonWeaknesessLabel: UILabel!

    private let pokemon: PokemonViewModel
    private let pokemonDetailPresenter: PokemonDetailPresenter
    
    init(pokemon: PokemonViewModel,
         pokemonDetailPresenter: PokemonDetailPresenter)
    {
        self.pokemon = pokemon
        self.pokemonDetailPresenter = pokemonDetailPresenter
        
        super.init(
            nibName: PokemonDetailViewController.nibName,
            bundle: nil
        )
        
        self.pokemonDetailPresenter.view = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pokemonDetailPresenter.viewDidLoad(
            with: pokemon
        )
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError() }
}