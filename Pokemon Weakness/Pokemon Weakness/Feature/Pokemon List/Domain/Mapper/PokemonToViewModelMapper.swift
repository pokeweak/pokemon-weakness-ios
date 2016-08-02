//
//  PokemonToViewModelMapper.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 20/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//


import UIKit

struct PokemonToViewModelMapper: Mappable {
    
    private let pokemonNumberFormatter: PokemonNumberFormatter
    private let weaknessToViewModelMapper: WeaknessToViewModelMapper
    
    init(pokemonNumberFormatter: PokemonNumberFormatter,
         weaknessToViewModelMapper: WeaknessToViewModelMapper)
    {
        self.pokemonNumberFormatter = pokemonNumberFormatter
        self.weaknessToViewModelMapper = weaknessToViewModelMapper
    }
    
    func mapObject(from: Pokemon) -> PokemonViewModel {
        
        let name = from.name
        let number = "#\(pokemonNumberFormatter.format(from.number))"
        let image = String(from.number)
        let smallImage = image + "_small"
        let color = UIColor(hex: from.color)
        let weaknesses = weaknessToViewModelMapper.mapObjects(
            from.weaknesses
        )
        
        return PokemonViewModel(
            name: name,
            number: number,
            image: image,
            smallImage: smallImage,
            color: color,
            weaknesses: weaknesses
        )
    }
}