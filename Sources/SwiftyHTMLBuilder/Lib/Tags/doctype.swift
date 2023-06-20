//
//  doctype.swift
//  HTMLCreator
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public class doctype: HTML {
    public convenience init() {
        self.init{[]}
    }
    public override func process(_ insideProcess: (_ contents: [HTMLBase]) -> String) -> String {
        "<!DOCTYPE html>"
    }
    @available(*, unavailable)
    public override func attr(_ name: String, _ value: String) -> Self {
        return self
    }
    @available(*, unavailable)
    public override func css(_ name: String, _ value: String, mediaQuery: MediaQueryType = .none) -> Self {
        return self
    }
}
