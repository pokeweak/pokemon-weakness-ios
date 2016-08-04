//
//  DefaultDependencyContainerSpec.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//
 
import Quick
import Nimble

@testable import Pokemon_Weakness

class DefaultDependencyContainerSpec: QuickSpec {
    
    override func spec() {
        
        describe("DefaultDependencyContainerSpec") {
            
            let sut = Container()
            
            context("when registering an instance") {
                
                it("should register the instance") {
                    
                    let instance = "🔥"
                    
                    sut.register("stringInstance", instance: instance)
                    
                    let expectedInstance = sut.get("stringInstance") as? String
                    
                    expect(expectedInstance).to(equal(instance))
                }
            }
            
            context("when removing instances") {
                
                it("should remove an instance from container") {
                    
                    let instance = "💨"
                    
                    sut.register("stringInstance", instance: instance)
                    sut.remove("stringInstance")
                    
                    let expectedInstance = sut.get("stringInstance") as? String
                    
                    expect(expectedInstance).to(beNil())
                }
                
                it("should remove all instances from container") {
                    
                    let instance1 = "🔥"
                    let instance2 = "💨"
                    
                    sut.register("stringInstance1", instance: instance1)
                    sut.register("stringInstance2", instance: instance2)
                    
                    sut.removeAll()
                    
                    let expectedInstance1 = sut.get("stringInstance1") as? String
                    let expectedInstance2 = sut.get("stringInstance2") as? String
                    
                    expect(expectedInstance1).to(beNil())
                    expect(expectedInstance2).to(beNil())
                }
            }
            
            context("when locating an instance") {
                
                it("should register the instance") {
                    
                    let instance = [:]
                    let cachedInstance = Register(instance, key: "instance")
                    
                    expect(instance).to(equal(cachedInstance))
                }
                
                it("returns the correct instance when is already registered") {
                    
                    let instance = NSDate()
                    
                    Register(instance, key: "correctInstance")
                    
                    guard let cachedInstance: NSDate = Resolve("correctInstance") else {
                        return
                    }
                    
                    expect(instance).to(equal(cachedInstance))
                }
            }
        }
    }
}