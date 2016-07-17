//
//  PokemonItemCellView.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

protocol PokemonItemCellView {
    
    func setPokemonName(name: String)
    func setPokemonNumber(number: String)
    func setImage(image: UIImage)
    func setColor(color: UIColor)
}