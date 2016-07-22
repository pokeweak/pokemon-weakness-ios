//
//  PokemonListCollectionDataSource.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

private struct PokemonItemCellConfiguration {
    static let cornerRadius: Float = 4
}

class PokemonListCollectionDataSource<T>: CollectionDataSource<PokemonViewModel> {
    
    let screen: UIScreen
    let pokemonItemCellRenderer: PokemonItemCellRenderer

    init(screen: UIScreen,
         pokemonItemCellRenderer: PokemonItemCellRenderer)
    {
        self.screen = screen
        self.pokemonItemCellRenderer = pokemonItemCellRenderer
    }
    
    override func cellForRowAtIndexPath<C: UICollectionView>(collection: C, indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell: PokemonItemCell = collection.dequeueReusableCell(forIndexPath: indexPath)
        let item = itemAtIndexPath(indexPath)
        
        pokemonItemCellRenderer.render(
            item,
            into: cell as PokemonItemCellView
        )
        
        return cell
    }
    
    override func collection<T: UICollectionView>(collection: T, sizeForRowAtIndexPath: NSIndexPath) -> CGSize {
        
        let margin = 10
        let numberOfColumns = 3
        let size = screen.screnSize(
            byAddingMargins: margin
        )
        
        let itemWidth = (size - CGFloat(margin)) / CGFloat(numberOfColumns)

        return CGSize(
            width: itemWidth - CGFloat(margin),
            height: PokemonItemCell.size.height
        )
    }
}