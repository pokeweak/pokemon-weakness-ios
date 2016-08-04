//
//  AboutNavigationRouter.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 29/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

struct AboutNavigationRouter: NavigationRouter {
    
    private let aboutViewControllerProvider: AboutViewControllerProvider
    
    init(aboutViewControllerProvider: AboutViewControllerProvider) {
        self.aboutViewControllerProvider = aboutViewControllerProvider
    }
    
    func navigate(from: UIViewController) {
        
        let aboutViewController = aboutViewControllerProvider.aboutViewController()
        
        let navigationController = UINavigationController(
            rootViewController: aboutViewController
        )
        
        from.present(navigationController)
    }
}