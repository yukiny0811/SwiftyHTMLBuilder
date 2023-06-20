//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public class a: HTML {
    public override func tagName() -> String? {
        "a"
    }
    public convenience init(href: String, @HTMLBuilder _ contents: () -> [HTMLBase]) {
        self.init(contents)
        self.attr("href", href)
    }
    override public init(@HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
    }
}
