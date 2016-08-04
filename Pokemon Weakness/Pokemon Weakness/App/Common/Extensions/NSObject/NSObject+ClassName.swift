//
//  NSObject+ClassName.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

extension NSObject {
    
    static var className: String {
        return NSStringFromClass(self).componentsSeparatedByString(".").last!
    }
    
    static var nibName: String {
        return className
    }
}