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

    @IBOutlet weak var topHeaderView: UIView!
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var topHeaderTopSpaceLayoutConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var searchBarLeadingSpaceLayoutConstraint: NSLayoutConstraint!
    @IBOutlet weak var searchBarTrailingLayoutConstraint: NSLayoutConstraint!
 
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var settingsButton: UIButton!
    
    let pokemonListPresenter: PokemonListPresenter
    
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