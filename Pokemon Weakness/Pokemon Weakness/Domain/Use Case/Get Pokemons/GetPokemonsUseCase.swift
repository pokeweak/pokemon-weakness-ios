//
//  GetPokemonsUseCase.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 20/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation
import PromiseKit

class GetPokemonsUseCase {
    
    private let pokemonRepository: PokemonRepository
    
    init(pokemonRepository: PokemonRepository) {
        self.pokemonRepository = pokemonRepository
    }
    
    func getPokemons() -> Promise<[Pokemon]> {
        return pokemonRepository.getPokemons()
    }
}