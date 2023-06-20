//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public extension HTMLBase {
    
    @discardableResult
    func width(_ value: Float, unit: CSSSizeUnit = .none) -> Self {
        self.css("width", String(value) + unit.rawValue)
        return self
    }
    
    @discardableResult
    func width(_ value: String) -> Self {
        self.css("width", value)
        return self
    }
    
}
