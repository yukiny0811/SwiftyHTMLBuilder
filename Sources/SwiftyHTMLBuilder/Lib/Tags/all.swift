//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public class all: HTML {
    public override func needsEndTag() -> Bool {
        false
    }
    public override func process(_ insideProcess: ([HTMLBase]) -> String) -> String {
        styleTagString + insideProcess(self.contents)
    }
    public override var styleTagString: String {
        "<style>*{" + styleStrings + "}</style>"
    }
    
    @available(*, unavailable)
    public override func attr(_ name: String, _ value: String) -> Self {
        return self
    }
    
    override public init(@HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
    }
}
