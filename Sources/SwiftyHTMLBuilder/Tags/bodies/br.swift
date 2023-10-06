//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

public class br: HTML {
    public override var tagName: String { "br" }
    public override var needsEndTag: Bool { false }
    
    @available(*, unavailable)
    override public init(@HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
    }
    
    public init() {
        super.init { [HTMLBase].init() }
    }
}
