//
//  Translate.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 26/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation

/**
 Returns a localized string from the main bundle
 
 - parameter key: localizable key identifier
 
 - returns: localized string
 */
func Translate(key: String) -> String {
    return NSLocalizedString(key, comment: "") // So Rebel, without comments 😎
}

/**
 Returns a string created by using a given format string as a template into which the remaining argument values are substituted according to the user's default locale
 
 - parameter key:       localizable key identifier
 - parameter arguments: list of parameters
 
 - returns: localized string
 */
func Translate(key: String, arguments: CVarArgType...) -> String {
    return String(format: Translate(key), arguments: arguments)
}