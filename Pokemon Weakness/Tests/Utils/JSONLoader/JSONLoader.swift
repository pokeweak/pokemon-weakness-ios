//
//  JSONLoader.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 18/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import Foundation
import PromiseKit

class JSONLoader {
    
    /**
     Loads a JSON fixture from the test bundle
     
     - parameter filePath: file path for the json fil
     
     - returns: the return json value
     */
    static func fixture<T>(filePath: String) -> T {
        let bundle = NSBundle(forClass:object_getClass(self))
        let jsonFile = bundle.pathForResource(filePath, ofType: "json")
        let jsonData = NSData(contentsOfFile: jsonFile!)
        
        do {
            let json = try NSJSONSerialization.JSONObjectWithData(jsonData!, options: NSJSONReadingOptions.AllowFragments)
            return json as! T
        } catch {}
        
        return [:] as! T
    }
    
    static func fixturePromise<T>(filePath: String) -> Promise<T> {
        return Promise { fulfill, reject in
            fulfill(
                fixture(filePath)
            )
        }
    }

}