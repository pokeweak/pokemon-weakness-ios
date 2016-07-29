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

    let aboutPresenter: AboutPresenter
    
    init(aboutPresenter: AboutPresenter) {
        self.aboutPresenter = aboutPresenter
        
        super.init(
            nibName: AboutViewController.nibName,
            bundle: nil
        )
        self.aboutPresenter.view = self
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutPresenter.viewDidLoad()
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError() }
}
