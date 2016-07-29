//
//  AboutItemCellView.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 29/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

protocol AboutItemCellView {
    
    func setPokeball(image: UIImage)
    func setName(name: String)
    func setJob(job: String)
}