//
//  ApplicationController.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

class ApplicationController: NSObject, UIApplicationDelegate {
    
    var window: UIWindow?
    
    private let windowCoordinator: WindowCoordinable
    
    init(windowCoordinator: WindowCoordinable) {
        self.windowCoordinator = windowCoordinator
    }
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {
        
        if TestEnviromentDetector.applicationIsRunningTests() {
            return false
        }
        
        windowCoordinator.coordinate(window)
        
        return true
    }
}