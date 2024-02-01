//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

public class all: HTML {
    
    public override var needsEndTag: Bool { false }
    public override var customCSSTag: String? { "*" }
    
    public override init(@HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
    }
    
    @available(*, unavailable)
    public override func attr(_ name: String, _ value: HTMLValueConvertible) -> Self {
        return self
    }
}
