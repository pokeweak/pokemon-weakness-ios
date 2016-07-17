//
//  CollectionBaseViewController+UI.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

extension CollectionBaseViewController: CollectionUI {
    
    override func configureUI() {
        super.configureUI()
        
        collectionView?.backgroundColor = .catskillWhite()
    }
    
    func reload(animated: Bool) {
        collectionView?.reloadData()
    }
}