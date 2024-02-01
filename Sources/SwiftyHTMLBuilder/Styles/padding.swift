//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

import Foundation

public extension HTMLBlock {
    
    @discardableResult
    func padding(_ value: HTMLStringConvertible, unit: CSSSizeUnit) -> Self {
        self.css("padding", value.htmlString + unit.rawValue)
        return self
    }
    
    @discardableResult
    func paddingTop(_ value: HTMLStringConvertible, unit: CSSSizeUnit) -> Self {
        self.css("padding-top", value.htmlString + unit.rawValue)
        return self
    }
    
    @discardableResult
    func paddingBottom(_ value: HTMLStringConvertible, unit: CSSSizeUnit) -> Self {
        self.css("padding-bottom", value.htmlString + unit.rawValue)
        return self
    }
    
    @discardableResult
    func paddingLeft(_ value: HTMLStringConvertible, unit: CSSSizeUnit) -> Self {
        self.css("padding-left", value.htmlString + unit.rawValue)
        return self
    }
    
    @discardableResult
    func paddingRight(_ value: HTMLStringConvertible, unit: CSSSizeUnit) -> Self {
        self.css("padding-right", value.htmlString + unit.rawValue)
        return self
    }
    
    @discardableResult
    func padding(_ value: HTMLStringConvertible) -> Self {
        self.css("padding", value.htmlString)
        return self
    }
    
    @discardableResult
    func paddingTop(_ value: HTMLStringConvertible) -> Self {
        self.css("padding-top", value.htmlString)
        return self
    }
    
    @discardableResult
    func paddingBottom(_ value: HTMLStringConvertible) -> Self {
        self.css("padding-bottom", value.htmlString)
        return self
    }
    
    @discardableResult
    func paddingLeft(_ value: HTMLStringConvertible) -> Self {
        self.css("padding-left", value.htmlString)
        return self
    }
    
    @discardableResult
    func paddingRight(_ value: HTMLStringConvertible) -> Self {
        self.css("padding-right", value.htmlString)
        return self
    }
}
