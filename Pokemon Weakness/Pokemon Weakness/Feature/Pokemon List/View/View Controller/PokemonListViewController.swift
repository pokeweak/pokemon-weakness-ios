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

class PokemonListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
