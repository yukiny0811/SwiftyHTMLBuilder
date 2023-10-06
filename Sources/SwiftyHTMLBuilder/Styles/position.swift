//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

public extension HTML {
    
    @discardableResult
    func position(_ value: CSSPosition) -> Self {
        self.css("position", value.rawValue)
        return self
    }
    
    @discardableResult
    func position(_ value: HTMLValueConvertible) -> Self {
        self.css("position", value.convertToString())
        return self
    }
    
}
