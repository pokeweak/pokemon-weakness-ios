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
    private let searchPokemonsUseCase: SearchPokemonsUseCase
    private let pokemonToViewModelMapper: PokemonToViewModelMapper
    private let pokemonListCollectionDataSource: PokemonListCollectionDataSource<PokemonViewModel>
    
    init(getPokemonsUseCase: GetPokemonsUseCase,
         searchPokemonsUseCase: SearchPokemonsUseCase,
         pokemonToViewModelMapper: PokemonToViewModelMapper,
         pokemonListCollectionDataSource: PokemonListCollectionDataSource<PokemonViewModel>)
    {
        self.getPokemonsUseCase = getPokemonsUseCase
        self.searchPokemonsUseCase = searchPokemonsUseCase
        self.pokemonToViewModelMapper = pokemonToViewModelMapper
        self.pokemonListCollectionDataSource = pokemonListCollectionDataSource
        self.pokemonListCollectionDataSource.delegate = self
    }
    
    func viewDidLoad() {
        
        firstly {
            
            return getPokemonsUseCase.getPokemons()
            
        }.then { pokemons -> [PokemonViewModel] in
                
            return self.pokemonToViewModelMapper.mapObjects(pokemons)
            
        }.then { pokemonViewModels -> Void in
            
            self.updatePokemonList(pokemonViewModels)
        }
    }
    
    func search(query: String?) {
        
        firstly {
            
            return self.searchPokemonsUseCase.search(query)
            
        }.then { pokemons -> [PokemonViewModel] in
                
            return self.pokemonToViewModelMapper.mapObjects(pokemons)
                
        }.then { pokemonViewModels -> Void in
                
            self.updatePokemonList(pokemonViewModels)
        }
    }
    
    func cancelSearch() {
        search("")
    }
    
    private func updatePokemonList(pokemons: [PokemonViewModel]) {
        
        self.view?.setDataSource(
            self.pokemonListCollectionDataSource
        )
        
        self.pokemonListCollectionDataSource.items = pokemons
        
        self.view?.reload(true)
    }
}

// MARK: - PokemonListCollectionDataSourceDelegate

extension PokemonListPresenter: PokemonListCollectionDataSourceDelegate {
    
    func didSelect(pokemon: PokemonViewModel) {
        view?.showDetail(pokemon)
    }
}