//
//  PokemonListViewController+UI.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

extension PokemonListViewController {
    
    override func configureUI() {
        super.configureUI()
        
        collectionView?.registerNib(
            PokemonItemCell.self
        )
    }
    
    @IBAction func didPressAboutButton(sender: UIButton) {
        aboutNavigationRouter.navigate(self)
    }
}