//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

public class div: HTML {
    public override var tagName: String { "div" }
    public override var needsEndTag: Bool { true }
    override public init(@HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
    }
}
