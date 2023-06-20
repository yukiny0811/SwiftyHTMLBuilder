//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public class vstack: HTML {
    public override func tagName() -> String? {
        "div"
    }
    override public init(@HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
        self.css("display", "flex")
        self.css("align-items", "center")
        self.css("justify-content", "center")
        self.css("flex-direction", "column")
    }
}
