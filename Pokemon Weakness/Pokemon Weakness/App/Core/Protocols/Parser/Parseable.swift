//
//  Parseable.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 20/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

/**
 Defines contract for parsing elements from dictionaries and arrays
 */
protocol Parseable {
    
    associatedtype E
    associatedtype T
    
    /**
     Parse element
     
     - parameter element: element to be parsed
     
     - returns: the new parsed object
     */
    func parse(element: E) -> T
}
