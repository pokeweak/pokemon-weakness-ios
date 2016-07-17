//
//  Assembly+Foundation.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

extension Assembly {
    
    func getApplicationWindow() -> UIWindow? {
        
        let frame = getMainScreen().bounds
        
        return UIWindow(
            frame: frame
        )
    }
    
    func getMainScreen() -> UIScreen {
        return UIScreen.mainScreen()
    }
    
    func getBundle() -> NSBundle {
        return NSBundle.mainBundle()
    }
}