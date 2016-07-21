//
//  PokemonListViewController+SearchBar.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 21/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

extension PokemonListViewController: UISearchBarDelegate {
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        pokemonListPresenter.search(searchText)
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        searchBar.endEditing(true)
    }
}