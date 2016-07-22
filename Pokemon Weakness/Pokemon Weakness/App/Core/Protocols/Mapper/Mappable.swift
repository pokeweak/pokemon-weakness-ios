//
//  Mappable.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 20/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

/**
 Defines a contract for mapping from one object to another
 */
protocol Mappable {
    
    associatedtype F
    associatedtype T
    
    /**
     Maps an object into another object
     
     - parameter from: the source object to be mapped
     
     - returns: a new mapped object
     */
    func mapObject(from: F) -> T
}