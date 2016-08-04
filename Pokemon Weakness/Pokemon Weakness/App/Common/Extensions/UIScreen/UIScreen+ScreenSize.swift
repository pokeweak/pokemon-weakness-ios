//
//  UIScreen+ScreenSize.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 18/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

extension UIScreen {
    
    /**
     Calculate screen size width by removing lateral margins
     
     - parameter margin: margin to apply to the final window
     
     - returns: the screen size without the margins
     */
    func screnSize(byAddingMargins margin: Int) -> CGFloat {
        return bounds.width - CGFloat(margin ^ 2)
    }
    
    /**
     Detect if the current device has wide screen
     */
    func isWideScreen() -> Bool {
        return bounds.height >= 568.0
    }
}