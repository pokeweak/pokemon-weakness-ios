//
//  AboutItemCell+View.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 29/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

extension AboutItemCell: AboutItemCellView {
    
    func setPokeball(image: UIImage) {
        pokeballImageView.image = image
    }
    
    func setName(name: String) {
        nameLabel.text = name
    }
    
    func setJob(job: String) {
        jobLabel.text = job
    }
    
    func setMemberColor(color: UIColor) {
        memberBackgroundView.backgroundColor = color
    }
}