//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

public extension HTML {
    
    @discardableResult
    func margin(_ value: HTMLValueConvertible, unit: CSSSizeUnit = .none) -> Self {
        self.css("margin", value.convertToString() + unit.rawValue)
        return self
    }
    
    @discardableResult
    func marginTop(_ value: HTMLValueConvertible, unit: CSSSizeUnit = .none) -> Self {
        self.css("margin-top", value.convertToString() + unit.rawValue)
        return self
    }
    
    @discardableResult
    func marginBottom(_ value: HTMLValueConvertible, unit: CSSSizeUnit = .none) -> Self {
        self.css("margin-bottom", value.convertToString() + unit.rawValue)
        return self
    }
    
    @discardableResult
    func marginLeft(_ value: HTMLValueConvertible, unit: CSSSizeUnit = .none) -> Self {
        self.css("margin-left", value.convertToString() + unit.rawValue)
        return self
    }
    
    @discardableResult
    func marginRight(_ value: HTMLValueConvertible, unit: CSSSizeUnit = .none) -> Self {
        self.css("margin-right", value.convertToString() + unit.rawValue)
        return self
    }
}
