//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public extension HTML {
    
    @discardableResult
    func width(_ value: Float, unit: CSSSizeUnit = .none, for mediaQuery: MediaQueryType = .none) -> Self {
        self.css("width", String(value) + unit.rawValue, mediaQuery: mediaQuery)
        return self
    }
    
    @discardableResult
    func width(_ value: String, for mediaQuery: MediaQueryType = .none) -> Self {
        self.css("width", value, mediaQuery: mediaQuery)
        return self
    }
    
}
