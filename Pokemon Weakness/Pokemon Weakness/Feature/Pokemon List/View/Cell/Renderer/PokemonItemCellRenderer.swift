//
//  PokemonItemCellRenderer.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

struct PokemonItemCellRenderer: Renderable {
    
    func render(data: PokemonViewModel, into view: PokemonItemCellView) {
        
        view.setPokemonNumber(data.number)
        view.setPokemonName(data.name)
        view.setImage(data.smallImage)
        view.setColor(data.color)
    }
}