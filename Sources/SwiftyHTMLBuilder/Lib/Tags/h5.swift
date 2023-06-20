//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public class h5: HTML {
    public override func tagName() -> String? {
        "h5"
    }
    override public init(@HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
    }
}
