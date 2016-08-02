//
//  PokeweakSnapshot.swift
//  PokeweakSnapshot
//
//  Created by Oscar Duran on 2/8/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import XCTest

class PokeweakSnapshot: XCTestCase {
        
    override func setUp() {
        super.setUp()
 
        continueAfterFailure = false

        let application = XCUIApplication()
        setupSnapshot(application)
        application.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCapturePokemonList() {
        snapshot("pokemon_list")
    }
    
    func testCapturePokemonDetail() {
        
        XCUIApplication().collectionViews.cells.otherElements.containingType(.StaticText, identifier:"#006").childrenMatchingType(.Other).elementBoundByIndex(0).childrenMatchingType(.Image).element.tap()
        
        snapshot("pokemon_detail")
    }
}





