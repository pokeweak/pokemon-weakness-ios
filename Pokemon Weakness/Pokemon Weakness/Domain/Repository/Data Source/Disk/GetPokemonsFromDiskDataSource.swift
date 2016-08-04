//
//  GetPokemonsFromDiskDataSource.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 20/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation
import PromiseKit

private struct PokemonListFixture {
    static let path = "pokemon_list"
}

struct GetPokemonsFromDiskDataSource: PokemonDataSource {
    
    private let pokemonDiskModelParser: PokemonDiskModelParser
    
    init(pokemonDiskModelParser: PokemonDiskModelParser) {
        self.pokemonDiskModelParser = pokemonDiskModelParser
    }
    
    func getPokemons() -> Promise<[Pokemon]> {
        
        return firstly { _ -> Promise<[[String: AnyObject]]> in
            
            return JSONLoader.fixturePromise(
                PokemonListFixture.path
            )
            
        }.then { json -> [Pokemon] in
            
            return self.pokemonDiskModelParser.parseArray(json)
        }
    }
}