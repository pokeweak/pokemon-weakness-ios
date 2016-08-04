//
//  Assembly+Controller.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

extension Assembly {
    
    func getApplicationController() -> ApplicationController {
        
        let applicationController = ApplicationController(
            windowCoordinator: getWindowCoordinator()
        )
        applicationController.window = getApplicationWindow()
        
        return applicationController
    }
    
    func getWindowCoordinator() -> WindowCoordinable {
        return DefaultWindowCoordinable(
            pokemonListViewControllerProvider: self
        )
    }
}