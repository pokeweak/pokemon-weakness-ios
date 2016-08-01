//
//  Assembly+CollectionDataSource.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

extension Assembly {
    
    func getPokemonListCollectionDataSource() -> PokemonListCollectionDataSource<PokemonViewModel> {
        return PokemonListCollectionDataSource(
            screen: getMainScreen(),
            pokemonItemCellRenderer: getPokemonItemCellRenderer()
        )
    }
    
    func getWeaknessListCollectionDataSource() -> WeaknessListCollectionDataSource<WeaknessViewModel> {
        return WeaknessListCollectionDataSource(
            screen: getMainScreen(),
            weaknessItemCellRenderer: getWeaknessItemCellRenderer()
        )
    }
    
    func getAboutCollectionDataSource() -> AboutCollectionDataSource<AboutItemViewModel> {
        return AboutCollectionDataSource(
            screen: getMainScreen(),
            aboutItemCellRenderer: getAboutItemCellRenderer()
        )
    }
}