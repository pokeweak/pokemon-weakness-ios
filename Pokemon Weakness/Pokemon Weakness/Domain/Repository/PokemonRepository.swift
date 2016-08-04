//
//  PokemonRepository.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import PromiseKit

protocol PokemonRepository {
    func getPokemons() -> Promise<[Pokemon]>
}