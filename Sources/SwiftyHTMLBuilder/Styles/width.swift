//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

import Foundation

public extension HTMLBlock {
    
    @discardableResult
    func width(_ value: HTMLStringConvertible, unit: CSSSizeUnit) -> Self {
        self.css("width", value.htmlString + unit.rawValue)
        return self
    }
    
    @discardableResult
    func width(_ value: HTMLStringConvertible) -> Self {
        self.css("width", value.htmlString)
        return self
    }
    
}
