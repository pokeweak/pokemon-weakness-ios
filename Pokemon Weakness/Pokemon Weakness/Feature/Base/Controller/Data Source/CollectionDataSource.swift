//
//  CollectionDataSource.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

class CollectionDataSource<T>: NSObject, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, CollectionViewDataSource {
    
    var items: [T] = []
    
    // MARK: - CollectionViewDataSource
    
    func cellForRowAtIndexPath<C: UICollectionView>(collection: C, indexPath: NSIndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    func collection<C: UICollectionView, Z: UICollectionViewCell>(collection: C, willDisplayCell cell: Z, forRowAtIndexPath indexPath: NSIndexPath) {}
    
    func collection<T: UICollectionView>(collection: T, sizeForRowAtIndexPath: NSIndexPath) -> CGSize {
        return CGSize(width: 0, height: 0)
    }
    
    // MARK: - UICollectionViewDataSource
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        return cellForRowAtIndexPath(collectionView, indexPath: indexPath)
    }
    
    func collectionView(collectionView: UICollectionView, willDisplayCell cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath) {
        collection(collectionView, willDisplayCell: cell, forRowAtIndexPath: indexPath)
    }
    
    // MARK: - UICollectionViewDelegateFlowLayout
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return collection(collectionView, sizeForRowAtIndexPath: indexPath)
    }
}

// MARK: - Helper functions

extension CollectionDataSource {
    
    func itemAtIndexPath(indexPath: NSIndexPath) -> T {
        return items[indexPath.row]
    }
}