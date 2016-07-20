//
//  Assembly+Mapper.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 20/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

extension Assembly {
    
    func getPokemonToViewModelMapper() -> PokemonToViewModelMapper {
        return PokemonToViewModelMapper(pokemonNumberFormatter:
            getPokemonNumberFormatter()
        )
    }
    
    func getPokemonNumberFormatter() -> PokemonNumberFormatter {
        return PokemonNumberFormatter(
            numberFormatter: getNumberFormatter()
        )
    }
}