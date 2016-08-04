//
//  TestEnviromentDetector.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

struct TestEnviromentDetector {
    
    /**
     Detect if current app is currenlty on a test enviroment
     
     - returns: is testing the app?
     */
    static func applicationIsRunningTests() -> Bool {
        
        guard let _ = NSClassFromString("XCTest") else {
            return false
        }
        
        return true
    }
}