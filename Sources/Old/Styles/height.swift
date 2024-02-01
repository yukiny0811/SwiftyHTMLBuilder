//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

public extension HTML {
    
    @discardableResult
    func height(_ value: HTMLValueConvertible, unit: CSSSizeUnit = .none) -> Self {
        self.css("height", value.convertToString() + unit.rawValue)
        return self
    }
    
    @discardableResult
    func height(_ value: HTMLValueConvertible) -> Self {
        self.css("height", value.convertToString())
        return self
    }
    
}
