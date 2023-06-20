//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public extension HTMLBase {
    
    @discardableResult
    func margin(_ value: Float, unit: CSSSizeUnit = .none) -> Self {
        self.css("margin", String(value) + unit.rawValue)
        return self
    }
    
    @discardableResult
    func marginTop(_ value: Float, unit: CSSSizeUnit = .none) -> Self {
        self.css("margin-top", String(value) + unit.rawValue)
        return self
    }
    
    @discardableResult
    func marginBottom(_ value: Float, unit: CSSSizeUnit = .none) -> Self {
        self.css("margin-bottom", String(value) + unit.rawValue)
        return self
    }
    
    @discardableResult
    func marginLeft(_ value: Float, unit: CSSSizeUnit = .none) -> Self {
        self.css("margin-left", String(value) + unit.rawValue)
        return self
    }
    
    @discardableResult
    func marginRight(_ value: Float, unit: CSSSizeUnit = .none) -> Self {
        self.css("margin-right", String(value) + unit.rawValue)
        return self
    }
    
    @discardableResult
    func margin(_ value: String) -> Self {
        self.css("margin", value)
        return self
    }
    
    @discardableResult
    func marginTop(_ value: String) -> Self {
        self.css("margin-top", value)
        return self
    }
    
    @discardableResult
    func marginBottom(_ value: String) -> Self {
        self.css("margin-bottom", value)
        return self
    }
    
    @discardableResult
    func marginLeft(_ value: String) -> Self {
        self.css("margin-left", value)
        return self
    }
    
    @discardableResult
    func marginRight(_ value: String) -> Self {
        self.css("margin-right", value)
        return self
    }
    
}
