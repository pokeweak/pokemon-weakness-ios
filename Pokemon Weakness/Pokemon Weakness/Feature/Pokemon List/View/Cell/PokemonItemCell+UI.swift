//
//  PokemonItemCell+UI.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 20/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

extension PokemonItemCell: ConfigurableUI {
    
    func configureUI() {
        applyShadow()
        topContainerView.applyCornerRadius(4)
        applyCornerRadius(4)
    }
}