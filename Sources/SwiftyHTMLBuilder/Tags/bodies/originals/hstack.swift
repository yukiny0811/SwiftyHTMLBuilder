//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

public class hstack: HTML {
    public override var tagName: String { "div" }
    public override var needsEndTag: Bool { true }
    
    @available(*, unavailable)
    public override init(_ contents: () -> [HTMLBase]) {
        super.init(contents)
    }
    
    public init(vAlign: FlexAlignment = .center, hAlign: FlexAlignment = .center, @HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
        self.css("display", "flex")
        self.css("flex-direction", "row")
        self.css("align-items", vAlign.rawValue)
        self.css("justify-content", hAlign.rawValue)
    }
}
