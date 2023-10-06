//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

public extension HTML {
    
    @discardableResult
    func backgroundColor(r: HTMLValueConvertible, g: HTMLValueConvertible, b: HTMLValueConvertible) -> Self {
        self.css("background-color", "rgb(\(r.convertToString()),\(g.convertToString()),\(b.convertToString()))")
        return self
    }
    
    @discardableResult
    func backgroundColor(r: HTMLValueConvertible, g: HTMLValueConvertible, b: HTMLValueConvertible, a: HTMLValueConvertible) -> Self {
        self.css("background-color", "rgba(\(r.convertToString()),\(g.convertToString()),\(b.convertToString()),\(a.convertToString()))")
        return self
    }
    
    @discardableResult
    func backgroundColor(_ color: CSSColor) -> Self {
        self.css("background-color", color.rawValue)
        return self
    }
    
    @discardableResult
    func backgroundColor(_ color: HTMLValueConvertible) -> Self {
        self.css("background-color", color.convertToString())
        return self
    }
}
