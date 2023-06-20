//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public class zstack: HTML {
    public override func tagName() -> String? {
        "div"
    }
    override public init(@HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
        self.css("display", "flex")
        self.css("align-items", "center")
        self.css("justify-content", "center")
        self.css("flex-direction", "column")
        self.css("position", "relative")
        for i in 0..<self.contents.count {
            if i == 0 { continue }
            self.contents[i].css("position", "absolute", mediaQuery: .none)
        }
    }
}
