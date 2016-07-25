//
//  PokemonListCollectionDataSource+Animations.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 25/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

extension PokemonListCollectionDataSource {
    
    func highlightItem(collectionView: UICollectionView, indexPath: NSIndexPath) {
        animate(collectionView, indexPath: indexPath, highlighted: true)
    }
    
    func unHighlightItem(collectionView: UICollectionView, indexPath: NSIndexPath) {
        animate(collectionView, indexPath: indexPath, highlighted: false)
    }
    
    private func animate(collectionView: UICollectionView, indexPath: NSIndexPath, highlighted: Bool) {
        
        let cell = collectionView.cellForItemAtIndexPath(indexPath)
        
        let scale: CGFloat = highlighted ? 0.96 : 1
        
        UIView.transitionWithView(
            collectionView,
            duration: 0.1,
            options: .TransitionNone,
            animations: {
                cell?.transform = CGAffineTransformMakeScale(scale, scale)
            }, completion: nil
        )
    }
}