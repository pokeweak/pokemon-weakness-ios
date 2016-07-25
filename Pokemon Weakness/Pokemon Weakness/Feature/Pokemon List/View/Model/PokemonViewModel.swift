//
//  PokemonViewModel.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

struct PokemonViewModel {
    
    let name: String
    let number: String
    let image: String
    let smallImage: String
    let color: UIColor
    let weaknesses: [WeaknessViewModel]
}