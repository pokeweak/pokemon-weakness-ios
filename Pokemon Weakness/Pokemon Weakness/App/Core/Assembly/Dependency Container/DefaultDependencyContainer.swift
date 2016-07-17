//
//  DefaultDependencyContainer.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

private class DefaultDependencyContainer: DependencyContainer {
    
    private static let container = DefaultDependencyContainer()
    private var serviceInstances = [String: AnyObject]()
    
    private init() {}
    
    func register(key: String, instance: AnyObject) {
        serviceInstances[key] = instance
    }
    
    func get(key: String) -> AnyObject? {
        return serviceInstances[key]
    }
    
    func remove(key: String) {
        serviceInstances.removeValueForKey(key)
    }
    
    func removeAll() {
        serviceInstances.removeAll()
    }
}

/**
 Returns the default dependency container
 */
func Container() -> DependencyContainer {
    return DefaultDependencyContainer.container
}

/**
 Register and save instance of an object
 
 - parameter service: service instance to register/locate
 - parameter key:     an key identifier
 
 - returns: returns a cached instance of the service
 */
func Register<T where T: AnyObject>(service: T, key: String) -> T {
    
    if let service = Container().get(key) {
        assertionFailure("Dependency is already registered \(service) -> \(key)")
    }
    
    DefaultDependencyContainer.container.register(key, instance: service)
    
    return service
}

/**
 Try to resolve an instance from the container
 
 - parameter key: instance key identifier
 
 - returns: wether the instance is registered
 */
func Resolve<T where T: AnyObject>(key: String) -> T? {
    return Container().get(key) as? T
}