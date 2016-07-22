//
//  UIImageView+ImageLoading.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 21/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation
import SDWebImage

extension UIImageView {
    
    func setImage(named: String, withExtension ext: String = "png", placeholderImage: UIImage? = nil, animated: Bool = false) {

        let imageTransitionDuration = 0.2
        
        let url = NSBundle.mainBundle().URLForResource(named, withExtension: ext)
        
        sd_setImageWithURL(url, placeholderImage: placeholderImage) { (image, error, cacheType, imageUrl) in
            
            if animated {
                
                guard let _ = error where cacheType != .Memory else {
                    
                    UIView.transitionWithView(self,
                                              duration: imageTransitionDuration,
                                              options: .TransitionCrossDissolve,
                                              animations: {
                                                self.image = image
                        }, completion: nil
                    )
                    
                    return
                }
            }
        }
    }
}
