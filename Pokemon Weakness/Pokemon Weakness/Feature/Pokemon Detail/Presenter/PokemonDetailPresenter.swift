//
//  PokemonDetailPresenter.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 25/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

class PokemonDetailPresenter {
    
    weak var view: PokemonDetailView?

    private let weaknessListCollectionDataSource: WeaknessListCollectionDataSource<WeaknessViewModel>
    
    init(weaknessListCollectionDataSource: WeaknessListCollectionDataSource<WeaknessViewModel>) {
        self.weaknessListCollectionDataSource = weaknessListCollectionDataSource
    }
    
    func viewDidLoad(with pokemon: PokemonViewModel) {
        
        view?.configureDetail(
            with: pokemon
        )
        
        weaknessListCollectionDataSource.items = pokemon.weaknesses
        
        view?.setDataSource(
            weaknessListCollectionDataSource
        )
        
        view?.reload(true)
    }
}