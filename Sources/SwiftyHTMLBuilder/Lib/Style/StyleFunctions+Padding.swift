//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public extension HTMLBase {
    
    @discardableResult
    func padding(_ value: Float, unit: CSSSizeUnit = .none) -> Self {
        self.css("padding", String(value) + unit.rawValue)
        return self
    }
    
    @discardableResult
    func paddingTop(_ value: Float, unit: CSSSizeUnit = .none) -> Self {
        self.css("padding-top", String(value) + unit.rawValue)
        return self
    }
    
    @discardableResult
    func paddingBottom(_ value: Float, unit: CSSSizeUnit = .none) -> Self {
        self.css("padding-bottom", String(value) + unit.rawValue)
        return self
    }
    
    @discardableResult
    func paddingLeft(_ value: Float, unit: CSSSizeUnit = .none) -> Self {
        self.css("padding-left", String(value) + unit.rawValue)
        return self
    }
    
    @discardableResult
    func paddingRight(_ value: Float, unit: CSSSizeUnit = .none) -> Self {
        self.css("padding-right", String(value) + unit.rawValue)
        return self
    }
    
    @discardableResult
    func padding(_ value: String) -> Self {
        self.css("padding", value)
        return self
    }
    
    @discardableResult
    func paddingTop(_ value: String) -> Self {
        self.css("padding-top", value)
        return self
    }
    
    @discardableResult
    func paddingBottom(_ value: String) -> Self {
        self.css("padding-bottom", value)
        return self
    }
    
    @discardableResult
    func paddingLeft(_ value: String) -> Self {
        self.css("padding-left", value)
        return self
    }
    
    @discardableResult
    func paddingRight(_ value: String) -> Self {
        self.css("padding-right", value)
        return self
    }
    
}
