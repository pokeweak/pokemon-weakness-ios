//
//  AppDelegate.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let applicationController = Dependency().getApplicationController()
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        return applicationController.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}