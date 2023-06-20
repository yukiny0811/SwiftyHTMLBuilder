//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public class nav: HTML {
    public override func tagName() -> String? {
        "nav"
    }
    override public init(@HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
    }
}
