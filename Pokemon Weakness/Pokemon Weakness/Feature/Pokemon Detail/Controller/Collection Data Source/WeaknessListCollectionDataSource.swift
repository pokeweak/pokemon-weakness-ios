//
//  WeaknessListCollectionDataSource.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 25/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

class WeaknessListCollectionDataSource<T>: CollectionDataSource<WeaknessViewModel> {
    
    private let screen: UIScreen
    private let weaknessItemCellRenderer: WeaknessItemCellRenderer

    init(screen: UIScreen,
         weaknessItemCellRenderer: WeaknessItemCellRenderer)
    {
        self.screen = screen
        self.weaknessItemCellRenderer = weaknessItemCellRenderer
    }
    
    override func cellForRowAtIndexPath<C: UICollectionView>(collection: C, indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell: WeaknessItemCell = collection.dequeueReusableCell(forIndexPath: indexPath)
        let item = itemAtIndexPath(indexPath)
        
        weaknessItemCellRenderer.render(
            item,
            into: cell as WeaknessItemCellView
        )
        
        return cell
    }
    
    override func collection<T: UICollectionView>(collection: T, sizeForRowAtIndexPath: NSIndexPath) -> CGSize {
   
        let margin = 10
        let numberOfColumns = 3
        let collectionWidth = collection.bounds.width
        
        let itemWidth = CGFloat(collectionWidth) / CGFloat(numberOfColumns) - CGFloat(margin)
        
        return CGSize(
            width: itemWidth,
            height: WeaknessItemCell.size.height
        )
    }
}