//
//  Mappable+Array.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 20/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

extension Mappable {
    
    func mapObjects(objects: [F]) -> [T] {
        return objects.map { object -> T in
            return mapObject(object)
        }
    }
}