//
//  DataSource.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

/**
 *  Data source definition for UICollectionView
 */
protocol CollectionViewDataSource {
    
    associatedtype Z
    
    func cellForRowAtIndexPath<C: UICollectionView>(collection: C, indexPath: NSIndexPath) -> Z
    func collection<C: UICollectionView>(collection: C, willDisplayCell cell: Z, forRowAtIndexPath indexPath: NSIndexPath)
    func collection<C: UICollectionView>(collection: C, sizeForRowAtIndexPath: NSIndexPath) -> CGSize
}