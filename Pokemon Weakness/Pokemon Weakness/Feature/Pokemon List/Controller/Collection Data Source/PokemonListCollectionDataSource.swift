//
//  PokemonListCollectionDataSource.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

protocol PokemonListCollectionDataSourceDelegate: class {
    func didSelect(pokemon: PokemonViewModel)
}

class PokemonListCollectionDataSource<T>: CollectionDataSource<PokemonViewModel> {
    
    private let screen: UIScreen
    private let pokemonItemCellRenderer: PokemonItemCellRenderer
    
    weak var delegate: PokemonListCollectionDataSourceDelegate?
    
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
        let numberOfColumns = screen.isWideScreen() ? 3 : 2
        let size = screen.screnSize(
            byAddingMargins: margin
        )
        
        let itemWidth = (size - CGFloat(margin)) / CGFloat(numberOfColumns)

        return CGSize(
            width: itemWidth - CGFloat(margin),
            height: PokemonItemCell.size.height
        )
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        let item = itemAtIndexPath(indexPath)
        
        UIView.animateWithDuration(0.3, animations: { 
            self.highlightItem(collectionView, indexPath: indexPath)
        }) { _ in
            self.unHighlightItem(collectionView, indexPath: indexPath)
        }
        
        delegate?.didSelect(item)
    }
    
    func collectionView(collectionView: UICollectionView, didHighlightItemAtIndexPath indexPath: NSIndexPath) {
        highlightItem(collectionView, indexPath: indexPath)
        
    }
    
    func collectionView(collectionView: UICollectionView, didUnhighlightItemAtIndexPath indexPath: NSIndexPath) {
        unHighlightItem(collectionView, indexPath: indexPath)
    }
  
}