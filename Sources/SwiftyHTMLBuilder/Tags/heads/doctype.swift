//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

public class doctype: HTML {
    
    public override var tagName: String { "!DOCTYPE html" }
    public override var needsEndTag: Bool { false }
    
    @available(*, unavailable)
    override public init(@HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
    }
    
    public init() {
        super.init { [HTMLBase].init() }
    }
}
