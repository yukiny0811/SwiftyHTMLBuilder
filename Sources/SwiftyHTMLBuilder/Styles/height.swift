//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

import Foundation

public extension HTMLBlock {
    
    @discardableResult
    func height(_ value: HTMLStringConvertible, unit: CSSSizeUnit) -> Self {
        self.css("height", value.htmlString + unit.rawValue)
        return self
    }
    
    @discardableResult
    func height(_ value: HTMLStringConvertible) -> Self {
        self.css("height", value.htmlString)
        return self
    }
    
}
