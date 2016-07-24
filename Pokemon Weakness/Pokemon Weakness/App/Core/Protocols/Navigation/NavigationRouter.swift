//
//  NavigationRouter.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 24/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

/**
 *  Define navigation contract between two views
 */
protocol NavigationRouter {
    func navigate(from: UIViewController)
}