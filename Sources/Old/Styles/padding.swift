//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

public extension HTML {
    
    @discardableResult
    func padding(_ value: HTMLValueConvertible, unit: CSSSizeUnit = .none) -> Self {
        self.css("padding", value.convertToString() + unit.rawValue)
        return self
    }
    
    @discardableResult
    func paddingTop(_ value: HTMLValueConvertible, unit: CSSSizeUnit = .none) -> Self {
        self.css("padding-top", value.convertToString() + unit.rawValue)
        return self
    }
    
    @discardableResult
    func paddingBottom(_ value: HTMLValueConvertible, unit: CSSSizeUnit = .none) -> Self {
        self.css("padding-bottom", value.convertToString() + unit.rawValue)
        return self
    }
    
    @discardableResult
    func paddingLeft(_ value: HTMLValueConvertible, unit: CSSSizeUnit = .none) -> Self {
        self.css("padding-left", value.convertToString() + unit.rawValue)
        return self
    }
    
    @discardableResult
    func paddingRight(_ value: HTMLValueConvertible, unit: CSSSizeUnit = .none) -> Self {
        self.css("padding-right", value.convertToString() + unit.rawValue)
        return self
    }
}
