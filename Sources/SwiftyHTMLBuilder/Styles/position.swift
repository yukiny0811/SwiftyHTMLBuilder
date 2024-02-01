//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

import Foundation

public extension HTMLBlock {
    
    @discardableResult
    func position(_ value: CSSPosition) -> Self {
        self.css("position", value.rawValue)
        return self
    }
    
    @discardableResult
    func position(_ value: HTMLStringConvertible) -> Self {
        self.css("position", value.htmlString)
        return self
    }
}
