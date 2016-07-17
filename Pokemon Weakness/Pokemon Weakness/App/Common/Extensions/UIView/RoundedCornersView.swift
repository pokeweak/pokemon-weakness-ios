//
//  RoundedCornersView.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 18/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

struct RoundedCornersImageConfiguration {
    let corner: UIRectCorner
    let enabled: Bool
}

@IBDesignable class RoundedCornersImageView: UIView {
    
    @IBInspectable var enableAllCornerRadius: Bool = false
    @IBInspectable var enableTopLeftCornerRadius: Bool = false
    @IBInspectable var enableTopRightCornerRadius: Bool = false
    @IBInspectable var enableBottomLeftCornerRadius: Bool = false
    @IBInspectable var enableBottomRightCornerRadius: Bool = false
    @IBInspectable var cornerRadius: Int = 0
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        update()
    }
    
    func update() {
        let enabledCorners = [
            RoundedCornersImageConfiguration(
                corner: .TopLeft,
                enabled: enableTopLeftCornerRadius
            ),
            RoundedCornersImageConfiguration(
                corner: .TopRight,
                enabled: enableTopRightCornerRadius
            ),
            RoundedCornersImageConfiguration(
                corner: .BottomLeft,
                enabled: enableBottomLeftCornerRadius
            ),
            RoundedCornersImageConfiguration(
                corner: .BottomRight,
                enabled: enableBottomRightCornerRadius
            )
        ]
        
        var options: UIRectCorner = enableAllCornerRadius ? [.AllCorners] : []
        
        if !enableAllCornerRadius {
            enabledCorners.filter { configuration -> Bool in
                return configuration.enabled == true
                }.forEach { configuration in
                    options.insert(configuration.corner)
            }
        }
        
        let path = UIBezierPath(
            roundedRect: bounds,
            byRoundingCorners: options,
            cornerRadii: CGSize(
                width: cornerRadius,
                height: cornerRadius
            )
        )
        
        let maskLayer = CAShapeLayer()
        maskLayer.path = path.CGPath
        layer.mask = maskLayer
    }
}