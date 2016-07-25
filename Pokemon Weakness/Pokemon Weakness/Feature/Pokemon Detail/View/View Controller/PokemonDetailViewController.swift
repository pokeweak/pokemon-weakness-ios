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

class PokemonDetailViewController: BaseViewController {

    @IBOutlet weak var pokemonImageView: UIImageView!
    
    @IBOutlet weak var pokemonBackgroundView: UIView!
    
    @IBOutlet weak var pokemonNumberLabel: UILabel!
    @IBOutlet weak var pokemonNameLabel: UILabel!
    @IBOutlet weak var pokemonWeaknesessLabel: UILabel!
    
    let pokemon: PokemonViewModel
    
    init(pokemon: PokemonViewModel) {
        self.pokemon = pokemon
        
        super.init(
            nibName: PokemonDetailViewController.nibName,
            bundle: nil
        )
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError() }
}