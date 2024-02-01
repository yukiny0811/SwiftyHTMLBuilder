//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

import Foundation

public extension HTMLBlock {
    
    @discardableResult
    func margin(_ value: HTMLStringConvertible, unit: CSSSizeUnit) -> Self {
        self.css("margin", value.htmlString + unit.rawValue)
        return self
    }
    
    @discardableResult
    func marginTop(_ value: HTMLStringConvertible, unit: CSSSizeUnit) -> Self {
        self.css("margin-top", value.htmlString + unit.rawValue)
        return self
    }
    
    @discardableResult
    func marginBottom(_ value: HTMLStringConvertible, unit: CSSSizeUnit) -> Self {
        self.css("margin-bottom", value.htmlString + unit.rawValue)
        return self
    }
    
    @discardableResult
    func marginLeft(_ value: HTMLStringConvertible, unit: CSSSizeUnit) -> Self {
        self.css("margin-left", value.htmlString + unit.rawValue)
        return self
    }
    
    @discardableResult
    func marginRight(_ value: HTMLStringConvertible, unit: CSSSizeUnit) -> Self {
        self.css("margin-right", value.htmlString + unit.rawValue)
        return self
    }
    
    @discardableResult
    func margin(_ value: HTMLStringConvertible) -> Self {
        self.css("margin", value.htmlString)
        return self
    }
    
    @discardableResult
    func marginTop(_ value: HTMLStringConvertible) -> Self {
        self.css("margin-top", value.htmlString)
        return self
    }
    
    @discardableResult
    func marginBottom(_ value: HTMLStringConvertible) -> Self {
        self.css("margin-bottom", value.htmlString)
        return self
    }
    
    @discardableResult
    func marginLeft(_ value: HTMLStringConvertible) -> Self {
        self.css("margin-left", value.htmlString)
        return self
    }
    
    @discardableResult
    func marginRight(_ value: HTMLStringConvertible) -> Self {
        self.css("margin-right", value.htmlString)
        return self
    }
}

