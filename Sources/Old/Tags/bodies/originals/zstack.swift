//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

public class zstack: HTML {
    public override var tagName: String { "div" }
    public override var needsEndTag: Bool { true }
    
    public override init(@HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
        self.css("display", "flex")
        self.css("flex-direction", "column")
        self.css("align-items", FlexAlignment.center.rawValue)
        self.css("justify-content", FlexAlignment.center.rawValue)
        self.css("position", "relative")
        for c in self.contents {
            c.css("position", "absolute", mediaQuery: .none)
        }
    }
}
