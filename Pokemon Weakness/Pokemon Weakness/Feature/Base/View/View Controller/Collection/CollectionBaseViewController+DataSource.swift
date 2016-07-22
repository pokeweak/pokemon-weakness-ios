//
//  CollectionBaseViewController+DataSource.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

extension CollectionBaseViewController: CollectionDataSourceUI {
    
    func setDataSource<T>(dataSource: CollectionDataSource<T>) {
        collectionView?.dataSource = dataSource
        collectionView?.delegate = dataSource
    }
}