//
//  UICollectionView+Reusable.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    func register<T: UICollectionViewCell>(_: T.Type) {
        registerClass(T.self, forCellWithReuseIdentifier: T.className)
    }
    
    func registerNib<T: UICollectionViewCell>(_: T.Type) {
        
        let bundle = NSBundle(forClass: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        
        registerNib(nib, forCellWithReuseIdentifier: T.className)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: NSIndexPath) -> T {
        
        guard let cell = dequeueReusableCellWithReuseIdentifier(T.className, forIndexPath: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.className)")
        }
        
        return cell
    }
}