//
//  AboutViewController+UI.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 29/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

extension AboutViewController {
 
    override func configureUI() {
        super.configureUI()
        
        collectionView?.registerNib(
            AboutItemCell.self
        )
    }
}