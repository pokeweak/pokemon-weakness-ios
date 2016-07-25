//
//  PokemonType.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

/**
 List of pokemon's types extracted from http://pokemondb.net/type
 */
enum PokemonType: String {
    
    case Normal
    case Fire
    case Water
    case Electric
    case Grass
    case Ice
    case Fighting
    case Poison
    case Ground
    case Flying
    case Psychic
    case Bug
    case Rock
    case Ghost
    case Dragon
    case Dark
    case Steel
    case Fairy
}

extension PokemonType {
    
    var color: UIColor {
        switch self {
        case Normal:
            return UIColor(hex: 0x4a4a4a)
        case Fire:
            return UIColor(hex: 0xff5722)
        case Water:
            return UIColor(hex: 0x2196f3)
        case Electric:
            return UIColor(hex: 0xffc107)
        case Grass:
            return UIColor(hex: 0x4caf50)
        case Ice:
            return UIColor(hex: 0x81d4fa)
        case Fighting:
            return UIColor(hex: 0xf44336)
        case Poison:
            return UIColor(hex: 0x21d0a9)
        case Ground:
            return UIColor(hex: 0x795548)
        case Flying:
            return UIColor(hex: 0x2962ff)
        case Psychic:
            return UIColor(hex: 0x9c27b0)
        case Bug:
            return UIColor(hex: 0x009688)
        case Rock:
            return UIColor(hex: 0x9e9e9e)
        case Ghost:
            return UIColor(hex: 0xe2e2e2)
        case Dragon:
            return UIColor(hex: 0x5c6bc0)
        case Dark:
            return UIColor(hex: 0x263238)
        case Steel:
            return UIColor(hex: 0x607d8b)
        case Fairy:
            return UIColor(hex: 0xe91e63)
        }
    }
}