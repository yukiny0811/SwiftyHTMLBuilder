//
//  html.swift
//  HTMLCreator
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public class html: HTML {
    public override func tagName() -> String? {
        "html"
    }
    override public init(@HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
    }
}
