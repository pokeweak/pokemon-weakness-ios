//
//  CollectionBaseViewController+EmptyState.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 26/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

extension CollectionBaseViewController: EmptyStateUI {
 
    func configureEmptyState() {
        
        emptyState.shouldDisplay = true
        emptyState.scrollView = collectionView
    }
}