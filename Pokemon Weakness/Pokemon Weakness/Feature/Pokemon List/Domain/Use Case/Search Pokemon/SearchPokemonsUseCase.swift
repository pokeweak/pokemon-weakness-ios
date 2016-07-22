//
//  SearchPokemonsUseCase.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 21/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation
import PromiseKit

struct SearchPokemonsUseCase {
    
    private let getPokemonsUseCase: GetPokemonsUseCase
    
    init(getPokemonsUseCase: GetPokemonsUseCase) {
        self.getPokemonsUseCase = getPokemonsUseCase
    }
    
    func search(query: String?) -> Promise<[Pokemon]> {
        
        return firstly {
            
            return getPokemonsUseCase.getPokemons()

        }.then { pokemons -> [Pokemon] in
            
            guard let query = query where query.characters.count > 0 else {
                return pokemons
            }
            
            let filteredPokemons = pokemons.filter { element in
                return element.name.lowercaseString.containsString(query.lowercaseString)
            }
            
            let thereArePokemons = filteredPokemons.count > 0
            
            return thereArePokemons ? filteredPokemons : pokemons
        }
    }
}