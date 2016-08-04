//
//  NSAttributedString.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 26/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

extension NSAttributedString {
    
    static func make(string: String, font: UIFont, color: UIColor) -> NSAttributedString {
        
        let attributes = [
            NSFontAttributeName: font,
            NSForegroundColorAttributeName: color
        ]
        
        return NSAttributedString(
            string: string,
            attributes: attributes
        )
    }
}