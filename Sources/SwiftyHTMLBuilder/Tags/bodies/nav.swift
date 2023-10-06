//
//  File 2.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

public class nav: HTML {
    public override var tagName: String { "nav" }
    public override var needsEndTag: Bool { true }
    override public init(@HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
    }
}
