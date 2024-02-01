//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

public extension HTML {
    
    @discardableResult
    func width(_ value: HTMLValueConvertible, unit: CSSSizeUnit = .none) -> Self {
        self.css("width", value.convertToString() + unit.rawValue)
        return self
    }
    
    @discardableResult
    func width(_ value: HTMLValueConvertible) -> Self {
        self.css("width", value.convertToString())
        return self
    }
    
}
