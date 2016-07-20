//
//  PokemonNumberFormatter.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 20/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

struct PokemonNumberFormatter {
    
    private let numberFormatter: NSNumberFormatter
    
    init(numberFormatter: NSNumberFormatter) {
        self.numberFormatter = numberFormatter
    }
    
    func format(number: Int) -> String {
        numberFormatter.positiveFormat = "000"
        return numberFormatter.stringFromNumber(number)!
    }
}