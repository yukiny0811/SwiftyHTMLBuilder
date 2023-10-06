//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

public class p: HTML {
    public override var tagName: String { "p" }
    public override var needsEndTag: Bool { true }
    
    public init(_ text: String) {
        super.init { [HTMLBase].init() }
        self.contents = [text]
    }
    
    public override init(@HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
    }
}
