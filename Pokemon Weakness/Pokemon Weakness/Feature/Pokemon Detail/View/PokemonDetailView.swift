//
//  PokemonDetailView.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 25/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

protocol PokemonDetailView: class, CollectionDataSourceUI, CollectionUI {
    
    func configureDetail(with pokemon: PokemonViewModel)
}