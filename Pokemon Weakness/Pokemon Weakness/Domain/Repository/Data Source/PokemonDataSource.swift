//
//  PokemonDataSource.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import PromiseKit

protocol PokemonDataSourceProvider {
    func dataSource() -> PokemonDataSource
}

protocol PokemonDataSource {
    func getPokemons() -> Promise<[Pokemon]>
}