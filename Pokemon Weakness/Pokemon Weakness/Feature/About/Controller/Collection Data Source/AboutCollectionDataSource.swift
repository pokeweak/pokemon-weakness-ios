//
//  AboutCollectionDataSource.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 29/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

protocol AboutCollectionDataSourceDelegate: class {
    func didSelect(person: AboutItemViewModel)
}

class AboutCollectionDataSource<T>: CollectionDataSource<AboutItemViewModel> {
    
    private let screen: UIScreen
    private let aboutItemCellRenderer: AboutItemCellRenderer
    
    weak var delegate: AboutCollectionDataSourceDelegate?
    
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
        
        let margin = 20
        
        let itemWidth = screen.screnSize(
            byAddingMargins: margin
        )
        
        return CGSize(
            width: itemWidth,
            height: AboutItemCell.size.height
        )
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        let person = itemAtIndexPath(indexPath)
        
        delegate?.didSelect(person)
    }
}