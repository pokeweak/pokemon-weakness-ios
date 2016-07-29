//
//  AboutViewController.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 29/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

protocol AboutViewControllerProvider {
    func aboutViewController() -> AboutViewController
}

class AboutViewController: CollectionBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
