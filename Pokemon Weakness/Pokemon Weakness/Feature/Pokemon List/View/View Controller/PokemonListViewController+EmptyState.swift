//
//  PokemonListViewController+EmptyState.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 26/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

extension PokemonListViewController {
    
    override func configureEmptyState() {
        super.configureEmptyState()
        
        emptyState.title = NSAttributedString(
            string: Translate("pokemon_list_empty_state.title")
        )
        emptyState.image = UIImage(
            named: "pokemon_not_found_empty_state"
        )
    }
}