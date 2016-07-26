//
//  DefaultEmptyState.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 26/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit
import DZNEmptyDataSet

class DefaultEmptyState: NSObject, EmptyState {
    
    var shouldDisplay = false
    var title: NSAttributedString?
    var subtitle: NSAttributedString?
    var image: UIImage?
    var customView: UIView?
    
    private var titleForState: TitleForState?
    private var action: Action?
    
    var scrollView: UIScrollView? {
        
        didSet {
            scrollView?.emptyDataSetDelegate = self
            scrollView?.emptyDataSetSource = self
        }
    }
    
    func reloadEmptyState() {
        scrollView?.reloadEmptyDataSet()
    }
    
    deinit {
        scrollView?.emptyDataSetDelegate = nil
        scrollView?.emptyDataSetSource = nil
    }
}

// MARK: - DZNEmptyDataSetDelegate

extension DefaultEmptyState: DZNEmptyDataSetDelegate {
    
    func emptyDataSetShouldDisplay(scrollView: UIScrollView!) -> Bool {
        return shouldDisplay
    }
    
    func emptyDataSetShouldAllowScroll(scrollView: UIScrollView!) -> Bool {
        return false
    }
    
    func emptyDataSetDidTapButton(scrollView: UIScrollView!) {
        if let buttonAction = action {
            buttonAction()
        }
    }
}

// MARK: - DZNEmptyDataSetSource

extension DefaultEmptyState: DZNEmptyDataSetSource {
    
    func emptyDataSetShouldFadeIn(scrollView: UIScrollView!) -> Bool {
        return true
    }
    
    func titleForEmptyDataSet(scrollView: UIScrollView!) -> NSAttributedString! {
        return title
    }
    
    func descriptionForEmptyDataSet(scrollView: UIScrollView!) -> NSAttributedString! {
        return subtitle
    }
    
    func imageForEmptyDataSet(scrollView: UIScrollView!) -> UIImage! {
        return image
    }
    
    func customViewForEmptyDataSet(scrollView: UIScrollView!) -> UIView! {
        return customView
    }
    
    func buttonTitleForEmptyDataSet(scrollView: UIScrollView!, forState state: UIControlState) -> NSAttributedString! {
        guard let titleForState = titleForState else {
            return nil
        }
        
        return titleForState(state)
    }
    
    func addButton(titleForState: TitleForState, action: Action) {
        self.titleForState = titleForState
        self.action = action
    }
}