//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

public class a: HTML {
    
    public override var tagName: String { "a" }
    public override var needsEndTag: Bool { true }
    
    @available(*, unavailable)
    public override init(_ contents: () -> [HTMLBase]) {
        super.init(contents)
    }
    
    public init(href: String, @HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
        self.attr("href", href)
    }
    
    public init(href: String, text: String) {
        super.init { [text] }
        self.attr("href", href)
    }
}
