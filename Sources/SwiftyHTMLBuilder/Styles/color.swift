//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

import Foundation

public extension HTMLBlock {
    
    @discardableResult
    func color(r: HTMLStringConvertible, g: HTMLStringConvertible, b: HTMLStringConvertible) -> Self {
        self.css("color", "rgb(\(r.htmlString),\(g.htmlString),\(b.htmlString))")
        return self
    }
    
    @discardableResult
    func color(r: HTMLStringConvertible, g: HTMLStringConvertible, b: HTMLStringConvertible, a: HTMLStringConvertible) -> Self {
        self.css("color", "rgba(\(r.htmlString),\(g.htmlString),\(b.htmlString),\(a.htmlString))")
        return self
    }
    
    @discardableResult
    func color(_ color: CSSColor) -> Self {
        self.css("color", color.rawValue)
        return self
    }
    
    @discardableResult
    func color(_ color: HTMLStringConvertible) -> Self {
        self.css("color", color.htmlString)
        return self
    }
    
}
