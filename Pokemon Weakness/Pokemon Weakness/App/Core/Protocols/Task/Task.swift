//
//  Task.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import PromiseKit

/**
 *  Async task definition
 */
protocol Task {
    
    associatedtype T
    
    /**
     Execute the task
     
     - returns: returns a new promise encapsulating the task
     */
    func execute() -> Promise<T>
}