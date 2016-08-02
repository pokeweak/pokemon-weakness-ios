//
//  Assembly+UseCase.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 20/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

extension Assembly {
    
    func getGetPokemonsUseCase() -> GetPokemonsUseCase {
        return GetPokemonsUseCase(
            pokemonRepository: getPokemonRepository()
        )
    }
    
    func getSearchPokemonsUseCase() -> SearchPokemonsUseCase {
        return SearchPokemonsUseCase(
            getPokemonsUseCase: getGetPokemonsUseCase()
        )
    }
    
    func getOpenTwitterUseCase() -> OpenTwitterUseCase {
        return OpenTwitterUseCase(
            application: getApplication()
        )
    }
}