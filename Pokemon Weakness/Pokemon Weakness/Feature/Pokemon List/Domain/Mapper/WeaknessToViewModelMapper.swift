//
//  WeaknessToViewModelMapper.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 25/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

struct WeaknessToViewModelMapper: Mappable {
    
    func mapObject(from: String) -> WeaknessViewModel {
        
        let pokemonTypes = [
            PokemonType.Normal,
            PokemonType.Fire,
            PokemonType.Water,
            PokemonType.Electric,
            PokemonType.Grass,
            PokemonType.Ice,
            PokemonType.Fighting,
            PokemonType.Poison,
            PokemonType.Ground,
            PokemonType.Flying,
            PokemonType.Psychic,
            PokemonType.Bug,
            PokemonType.Rock,
            PokemonType.Ghost,
            PokemonType.Dragon,
            PokemonType.Dark,
            PokemonType.Steel,
            PokemonType.Fairy
        ]
        
        let color = pokemonTypes.filter { $0.rawValue.lowercaseString == from.lowercaseString }.first!.color
        
        return WeaknessViewModel(
            weakness: from,
            color: color
        )
    }
}