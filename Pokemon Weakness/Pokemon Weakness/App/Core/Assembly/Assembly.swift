//
//  Assembly.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

/**
 Default assembly to generate all the dependency tree, if you need a part of the framework
 just extend this struct with the appropiate naming
 
 `example: Assembly+ViewControllers.swift`
 */
struct Assembly {
    private static let defaultAssembly = Assembly()
    
    /**
     Prevent default initializer
     */
    private init() {}}

/**
 Get dependency from assembly
 
 ```
 // Get pokemon repository instance
 
 Dependency().getPokemonRepository()
 ```
 
 - returns: the default assembly
 */
func Dependency() -> Assembly {
    return Assembly.defaultAssembly
}