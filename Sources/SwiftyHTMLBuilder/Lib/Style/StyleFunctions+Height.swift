//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public extension HTML {
    
    @discardableResult
    func height(_ value: Float, unit: CSSSizeUnit = .none) -> Self {
        self.css("height", String(value) + unit.rawValue)
        return self
    }
    
    @discardableResult
    func height(_ value: String) -> Self {
        self.css("height", value)
        return self
    }
    
}
