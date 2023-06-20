//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public class hstack: HTML {
    public override func tagName() -> String? {
        "div"
    }
    public init(alignment: HStackAlignment = .center, @HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
        self.css("display", "flex")
        self.css("align-items", "center")
        self.css("justify-content", "center")
        self.css("flex-direction", "row")
        self.css("justify-content", alignment.rawValue)
    }
}

public enum HStackAlignment: String {
    case leading = "flex-start"
    case center = "center"
    case trailing = "flex-end"
}
