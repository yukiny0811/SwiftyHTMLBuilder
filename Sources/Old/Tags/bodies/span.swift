//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

public class span: HTML {
    public override var tagName: String { "span" }
    public override var needsEndTag: Bool { true }
    
    override public init(@HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
    }
    
    public init(_ text: String) {
        super.init { [text] }
    }
}
