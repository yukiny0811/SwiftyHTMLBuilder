//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

public class link: HTML {
    public override var tagName: String { "link" }
    public override var needsEndTag: Bool { false }
    
    @available(*, unavailable)
    override public init(@HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
    }
    
    public init(rel: String, href: String, crossOrigin: Bool = false) {
        super.init { [HTMLBase].init() }
        self.attr("rel", rel)
        self.attr("href", href)
        self.attr("crossorigin", crossOrigin.convertToString())
    }
}
