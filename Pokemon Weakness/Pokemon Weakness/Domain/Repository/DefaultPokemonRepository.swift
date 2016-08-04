//
//  DefaultPokemonRepository.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 20/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation
import PromiseKit

struct DefaultPokemonRepository: PokemonRepository {
    
    private let getPokemonDataSourceProvider: PokemonDataSourceProvider
    
    init(getPokemonDataSourceProvider: PokemonDataSourceProvider) {
        self.getPokemonDataSourceProvider = getPokemonDataSourceProvider
    }
    
    func getPokemons() -> Promise<[Pokemon]> {
        return getPokemonDataSourceProvider.dataSource().getPokemons()
    }
}