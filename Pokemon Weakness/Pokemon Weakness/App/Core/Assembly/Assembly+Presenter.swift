//
//  Assembly+Presenter.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

extension Assembly {
    
    func getPokemonListPresenter() -> PokemonListPresenter {
        return PokemonListPresenter(
            getPokemonsUseCase: getGetPokemonsUseCase(),
            searchPokemonsUseCase: getSearchPokemonsUseCase(),
            pokemonToViewModelMapper: getPokemonToViewModelMapper(),
            pokemonListCollectionDataSource: getPokemonListCollectionDataSource()
        )
    }
    
    func getPokemonDetailPresenter() -> PokemonDetailPresenter {
        return PokemonDetailPresenter(
            weaknessListCollectionDataSource: getWeaknessListCollectionDataSource()
        )
    }
    
    func getAboutPresenter() -> AboutPresenter {
        return AboutPresenter(
            aboutCollectionDataSource: getAboutCollectionDataSource(),
            openTwitterUseCase: getOpenTwitterUseCase()
        )
    }
}