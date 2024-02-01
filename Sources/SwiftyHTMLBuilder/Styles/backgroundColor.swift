//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

import Foundation

public extension HTMLBlock {
    
    @discardableResult
    func backgroundColor(r: HTMLStringConvertible, g: HTMLStringConvertible, b: HTMLStringConvertible) -> Self {
        self.css("background-color", "rgb(\(r.htmlString),\(g.htmlString),\(b.htmlString))")
        return self
    }
    
    @discardableResult
    func backgroundColor(r: HTMLStringConvertible, g: HTMLStringConvertible, b: HTMLStringConvertible, a: HTMLStringConvertible) -> Self {
        self.css("background-color", "rgba(\(r.htmlString),\(g.htmlString),\(b.htmlString),\(a.htmlString))")
        return self
    }
    
    @discardableResult
    func backgroundColor(_ color: CSSColor) -> Self {
        self.css("background-color", color.rawValue)
        return self
    }
    
    @discardableResult
    func backgroundColor(_ color: HTMLStringConvertible) -> Self {
        self.css("background-color", color.htmlString)
        return self
    }
    
}
