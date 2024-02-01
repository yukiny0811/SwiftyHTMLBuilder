//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

public class meta: HTML {
    public override var tagName: String { "meta" }
    public override var needsEndTag: Bool { false }
    
    @available(*, unavailable)
    public override init(_ contents: () -> [HTMLBase]) {
        super.init(contents)
    }
    
    public init(charset: CharsetEncodingType) {
        super.init { [HTMLBase].init() }
        self.attr("charset", charset.rawValue)
    }
    
    public init(name: MetaName, content: String) {
        super.init { [HTMLBase].init() }
        self.attr("name", name.rawValue)
        self.attr("content", content)
    }
}
