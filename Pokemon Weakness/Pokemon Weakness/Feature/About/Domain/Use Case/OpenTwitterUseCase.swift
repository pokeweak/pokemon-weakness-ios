//
//  OpenTwitterUseCase.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 2/8/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

struct OpenTwitterUseCase {
    
    private let application: UIApplication
    
    init(application: UIApplication) {
        self.application = application
    }
    
    func open(url: NSURL) {
        application.openURL(url)
    }
}