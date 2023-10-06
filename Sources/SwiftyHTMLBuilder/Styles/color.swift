//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

public extension HTML {
    
    @discardableResult
    func color(r: HTMLValueConvertible, g: HTMLValueConvertible, b: HTMLValueConvertible) -> Self {
        self.css("color", "rgb(\(r.convertToString()),\(g.convertToString()),\(b.convertToString()))")
        return self
    }
    
    @discardableResult
    func color(r: HTMLValueConvertible, g: HTMLValueConvertible, b: HTMLValueConvertible, a: HTMLValueConvertible) -> Self {
        self.css("color", "rgba(\(r.convertToString()),\(g.convertToString()),\(b.convertToString()),\(a.convertToString()))")
        return self
    }
    
    @discardableResult
    func color(_ color: CSSColor) -> Self {
        self.css("color", color.rawValue)
        return self
    }
    
    @discardableResult
    func color(_ color: HTMLValueConvertible) -> Self {
        self.css("color", color.convertToString())
        return self
    }
}
