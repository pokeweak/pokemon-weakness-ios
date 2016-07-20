//
//  GetPokemonsFromDiskDataSource.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 20/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation
import PromiseKit

struct GetPokemonsFromDiskDataSource: PokemonDataSource {
    
    func getPokemons() -> Promise<[Pokemon]> {
        return Promise { _, _ in }
    }
}