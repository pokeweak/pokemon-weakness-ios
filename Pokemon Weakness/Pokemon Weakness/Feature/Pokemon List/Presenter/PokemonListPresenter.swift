//
//  PokemonListPresenter.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit
import PromiseKit

class PokemonListPresenter {
    
    weak var view: PokemonListView?
    
    private let getPokemonsUseCase: GetPokemonsUseCase
    private let pokemonToViewModelMapper: PokemonToViewModelMapper
    private let pokemonListCollectionDataSource: PokemonListCollectionDataSource<PokemonViewModel>
    
    init(getPokemonsUseCase: GetPokemonsUseCase,
         pokemonToViewModelMapper: PokemonToViewModelMapper,
         pokemonListCollectionDataSource: PokemonListCollectionDataSource<PokemonViewModel>)
    {
        self.getPokemonsUseCase = getPokemonsUseCase
        self.pokemonToViewModelMapper = pokemonToViewModelMapper
        self.pokemonListCollectionDataSource = pokemonListCollectionDataSource
    }
    
    func viewDidLoad() {
 
        firstly { _ -> Promise<[Pokemon]> in
            
            return getPokemonsUseCase.getPokemons()
        
        }.then { pokemons -> [PokemonViewModel] in

            return self.pokemonToViewModelMapper.mapObjects(pokemons)
            
        }.then { pokemonViewModels -> Void in
        
            self.pokemonListCollectionDataSource.items = pokemonViewModels
            
            self.view?.setDataSource(
                self.pokemonListCollectionDataSource
            )
            
            self.view?.reload(true)
        }
    }
}