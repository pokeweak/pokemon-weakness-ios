//
//  Renderable.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

protocol Renderable {
    
    associatedtype D
    associatedtype V
    
    /**
     Render information into a view
     
     - parameter data: data to render
     - parameter view:  view to render the data
     */
    func render(data: D, into view: V)
}