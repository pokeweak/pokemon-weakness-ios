//
//  Assembly+DataSource.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 20/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

extension Assembly: PokemonDataSourceProvider {
    
    func dataSource() -> PokemonDataSource {
        return GetPokemonsFromDiskDataSource(
            pokemonDiskModelParser: getPokemonDiskModelParser()
        )
    }
}