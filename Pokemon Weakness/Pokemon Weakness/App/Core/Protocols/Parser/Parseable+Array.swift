//
//  Parseable+Array.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 20/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

extension Parseable {
    
    func parseArray(elements: [E]) -> [T] {
        return elements.map { element -> T in
            return parse(element)
        }
    }
}