//
//  AboutItemCellRenderer.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 29/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

class AboutItemCellRenderer: Renderable {
    
    func render(data: AboutItemViewModel, into view: AboutItemCellView) {
        
        let pokeballImage = UIImage(
            named: data.pokeball
        )
        
        view.setPokeball(pokeballImage!)
        view.setName(data.name)
        view.setJob(data.job)
    }
}