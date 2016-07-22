//
//  PokemonDiskModelParser.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 20/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

private struct JSONKeys {
    static let name = "name"
    static let number = "number"
    static let color = "color"
}

struct PokemonDiskModelParser: Parseable {
    
    func parse(element: [String: AnyObject]) -> Pokemon {
        
        let name = element[JSONKeys.name] as! String
        let number = element[JSONKeys.number] as! Int
        let color = element[JSONKeys.color] as! Int
        
        return Pokemon(
            name: name,
            number: number,
            color: color
        )
    }
}