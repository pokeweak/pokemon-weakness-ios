//
//  AboutViewController+UI.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 29/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

extension AboutViewController {
 
    override func configureUI() {
        super.configureUI()
        
        collectionView?.registerNib(
            AboutItemCell.self
        )
        
        configureNavigationBar()
        configureCloseButton()
    }
    
    private func configureNavigationBar() {
        let logoImage = UIImage(named: "pokeball_enabled")
        let logoImageView = UIImageView(image: logoImage)
        navigationItem.titleView = logoImageView
    }
    
    private func configureCloseButton() {
        let closeIconImage = UIImage(named: "close_icon")
        let closeBarButtonItem = UIBarButtonItem(
            image: closeIconImage,
            style: .Done,
            target: self,
            action: #selector(didPressCloseButton(_:))
        )
        closeBarButtonItem.tintColor = .blackColor()
        
        navigationItem.leftBarButtonItem = closeBarButtonItem
    }
    
    func didPressCloseButton(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}