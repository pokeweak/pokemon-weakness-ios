//
//  UIViewControlled+Extended.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 24/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func present(viewController: UIViewController, animated: Bool = true) {
        presentViewController(viewController, animated: animated, completion: nil)
    }
}
