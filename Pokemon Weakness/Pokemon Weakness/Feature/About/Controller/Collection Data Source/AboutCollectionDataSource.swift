//
//  AboutCollectionDataSource.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 29/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

class AboutCollectionDataSource<T>: CollectionDataSource<AboutItemViewModel> {
    
    private let screen: UIScreen
    private let aboutItemCellRenderer: AboutItemCellRenderer
    
    init(screen: UIScreen,
         aboutItemCellRenderer: AboutItemCellRenderer)
    {
        self.screen = screen
        self.aboutItemCellRenderer = aboutItemCellRenderer
    }
    
    override func cellForRowAtIndexPath<C: UICollectionView>(collection: C, indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell: AboutItemCell = collection.dequeueReusableCell(forIndexPath: indexPath)
        let item = itemAtIndexPath(indexPath)
        
        aboutItemCellRenderer.render(
            item,
            into: cell as AboutItemCellView
        )
        
        return cell
    }
    
    override func collection<T: UICollectionView>(collection: T, sizeForRowAtIndexPath: NSIndexPath) -> CGSize {
        
        let margin = 10
        
        let itemWidth = screen.screnSize(
            byAddingMargins: margin
        )
        
        return CGSize(
            width: itemWidth,
            height: WeaknessItemCell.size.height
        )
    }
}