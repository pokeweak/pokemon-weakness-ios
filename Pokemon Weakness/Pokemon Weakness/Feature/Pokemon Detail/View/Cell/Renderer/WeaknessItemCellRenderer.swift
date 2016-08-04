//
//  WeaknessItemCellRenderer.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 25/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

class WeaknessItemCellRenderer: Renderable {
    
    func render(data: WeaknessViewModel, into view: WeaknessItemCellView) {
        view.setWeakness(data.weakness)
        view.setWeaknessColor(data.color)
    }
}