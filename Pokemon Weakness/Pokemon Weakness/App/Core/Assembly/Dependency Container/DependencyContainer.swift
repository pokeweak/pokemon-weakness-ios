//
//  DependencyContainer.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

/**
 Defines a protocol for storing and locating instances
 */
protocol DependencyContainer {
    
    /**
     Register instance for later reuse
     
     :param: key      instance key for later retrieval
     :param: instance class to register into locator
     */
    func register(key: String, instance: AnyObject)
    
    /**
     Retrieve instance from service locator
     
     :param: key instance key identifier
     
     :returns: the class instance you're requesting or nil if not found
     */
    func get(key: String) -> AnyObject?
    
    /**
     Remove instance from locator
     
     :param: key instance key identifier
     */
    func remove(key: String)
    
    /**
     Remove all instances from locator
     */
    func removeAll()
}