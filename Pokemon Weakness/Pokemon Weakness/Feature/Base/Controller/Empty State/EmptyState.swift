//
//  EmptyState.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 26/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

typealias Action = () -> ()
typealias TitleForState = (UIControlState) -> NSAttributedString

protocol EmptyState {
    
    /// Check if the empty state should be rendered and displayed. Default is NO.
    var shouldDisplay: Bool { get set }
    
    /// An attributed string for the dataset title, combining font, text color, text pararaph style, etc.
    var title: NSAttributedString? { get set }
    
    /// An attributed string for the dataset subtitle text, combining font, text color, text pararaph style, etc.
    var subtitle: NSAttributedString? { get set }
    
    /// Image for the empty state case
    var image: UIImage? { get set }
    
    /// Scrollview to set the empty state controller
    var scrollView: UIScrollView? { get set }
    
    /// Set a custom view
    var customView: UIView? { get set }
    
    /**
     Reloads the empty dataset
     */
    func reloadEmptyState()
    
    /**
     Add custom button for empty state
     
     - parameter titleForState: configure title depending on the button state
     - parameter action:        action to be executed when the button is pressed
     */
    func addButton(titleForState: TitleForState, action: Action)
}
