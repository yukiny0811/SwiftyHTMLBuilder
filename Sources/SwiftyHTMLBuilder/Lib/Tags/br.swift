//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public class br: HTML {
    public override func tagName() -> String? {
        "br"
    }
    public override func needsEndTag() -> Bool {
        false
    }
    @available(*, unavailable)
    public override func attr(_ name: String, _ value: String) -> Self {
        return self
    }
    @available(*, unavailable)
    public override func css(_ name: String, _ value: String) -> Self {
        return self
    }
}
